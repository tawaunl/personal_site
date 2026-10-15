#!/usr/bin/env bash
# Download the latest CV from the private tawaunl/ResumeCV repo into static/
# so every build publishes the current FullResume.pdf.
#
# Auth: $RESUME_CV_TOKEN (set in Netlify environment variables). Locally it
# falls back to your `gh` CLI login, so `bash scripts/fetch-cv.sh` just works.
#
# Fails the build if the CV can't be downloaded or doesn't look like a
# complete PDF; Netlify then keeps the previous deploy live.
set -euo pipefail

REPO="tawaunl/ResumeCV"
SRC_PATH="FullResume.pdf"
REF="main"
MIN_BYTES=20000
DESTS=(
  static/uploads/TawaunLucasCV_FULL.pdf  # embedded on /cv/
  static/cv/TawaunLucasCV_FULL.pdf       # linked from the author profile
)

cd "$(dirname "$0")/.."

token="${RESUME_CV_TOKEN:-}"
if [ -z "$token" ] && command -v gh >/dev/null 2>&1; then
  token="$(gh auth token 2>/dev/null || true)"
fi
if [ -z "$token" ]; then
  echo "fetch-cv: RESUME_CV_TOKEN is not set and no gh login was found." >&2
  exit 1
fi

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT

if ! curl -fsSL --retry 3 \
    -H "Authorization: Bearer $token" \
    -H "Accept: application/vnd.github.raw" \
    -o "$tmp" \
    "https://api.github.com/repos/$REPO/contents/$SRC_PATH?ref=$REF"; then
  echo "fetch-cv: could not download $SRC_PATH from $REPO@$REF." >&2
  echo "fetch-cv: check that RESUME_CV_TOKEN has read access to $REPO contents." >&2
  exit 1
fi

size="$(wc -c < "$tmp" | tr -d ' ')"
if [ "$(head -c 5 "$tmp")" != "%PDF-" ]; then
  echo "fetch-cv: downloaded file is not a PDF." >&2
  exit 1
fi
if ! tail -c 1024 "$tmp" | grep -q '%%EOF'; then
  echo "fetch-cv: downloaded PDF looks truncated (no %%EOF marker)." >&2
  exit 1
fi
if [ "$size" -lt "$MIN_BYTES" ]; then
  echo "fetch-cv: downloaded PDF is suspiciously small ($size bytes)." >&2
  exit 1
fi

for dest in "${DESTS[@]}"; do
  mkdir -p "$(dirname "$dest")"
  cp "$tmp" "$dest"
done

if command -v sha256sum >/dev/null 2>&1; then
  sum="$(sha256sum "$tmp" | cut -c1-12)"
else
  sum="$(shasum -a 256 "$tmp" | cut -c1-12)"
fi
echo "fetch-cv: fetched $REPO/$SRC_PATH@$REF ($size bytes, sha256 $sum)"
