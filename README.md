# Personal Website

> A modern, academic-style personal website built with Hugo and Wowchemy

[![Hugo](https://img.shields.io/badge/Hugo-0.83.1-ff4088?style=flat-square&logo=hugo)](https://gohugo.io/)
[![Netlify](https://img.shields.io/badge/Netlify-Deployed-00C7B7?style=flat-square&logo=netlify)](https://netlify.com)
[![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)](LICENSE)

### 🌐 Live Website

**👉 [www.tawaunlucas.com](https://www.tawaunlucas.com)**

Visit the live site to see the final product in action!

---

## 📋 Table of Contents

- [About](#about)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Development](#development)
- [Project Structure](#project-structure)
- [Deployment](#deployment)
- [Customization](#customization)
- [Content Management](#content-management)
- [Troubleshooting](#troubleshooting)
- [License](#license)
- [Contact](#contact)

---

## 🎯 About

This is the personal website of **Tawaun A. Lucas**, showcasing academic work, publications, experience, and professional accomplishments. The site is built using the [Hugo](https://gohugo.io/) static site generator with the [Wowchemy Academic](https://wowchemy.com/) theme, providing a modern, responsive design optimized for academic and professional portfolios.

**🌐 View the live site:** [www.tawaunlucas.com](https://www.tawaunlucas.com)

---

## 🛠 Tech Stack

- **Static Site Generator:** [Hugo](https://gohugo.io/) v0.83.1
- **Theme:** [Wowchemy Academic](https://wowchemy.com/)
- **Deployment:** [Netlify](https://netlify.com)
- **Language:** Markdown, YAML, HTML, SCSS
- **Version Control:** Git

---

## 📦 Prerequisites

Before you begin, ensure you have the following installed:

- [Hugo](https://gohugo.io/installation/) (Extended version recommended)
- [Git](https://git-scm.com/downloads)
- A code editor (VS Code, Sublime Text, etc.)

**Verify Hugo installation:**
```bash
hugo version
```

---

## 🚀 Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/personal_site.git
   cd personal_site
   ```

2. **Install Hugo modules:**
   ```bash
   hugo mod tidy
   ```

3. **Start the development server:**
   ```bash
   hugo server
   ```

4. **Open your browser:**
   Navigate to `http://localhost:1313` to view your site

---

## 💻 Development

### Local Development

```bash
# Start development server with live reload
hugo server

# Build for production
hugo --gc --minify

# Build with specific base URL
hugo --gc --minify -b https://tawaunlucas.com
```

### Development Commands

```bash
# Clean cache and build
hugo --gc --minify

# Build with future dates
hugo --buildFuture

# Build drafts
hugo -D
```

---

## 📁 Project Structure

```
personal_site/
├── assets/              # SCSS, JS, and media assets
│   ├── scss/           # Custom styles
│   └── media/          # Images and icons
├── config/             # Site configuration
│   └── _default/       # Default config files
├── content/            # Site content (Markdown files)
│   ├── home/          # Homepage sections
│   ├── publication/   # Research publications
│   ├── post/          # Blog posts
│   ├── event/         # Events and talks
│   └── courses/       # Course materials
├── layouts/           # Custom layout overrides
│   ├── partials/      # Reusable partials
│   └── shortcodes/    # Custom shortcodes
├── static/            # Static files (PDFs, images)
│   └── uploads/      # Uploaded files
├── themes/           # Hugo themes
├── config.yaml       # Main configuration
├── netlify.toml      # Netlify deployment config
└── README.md         # This file
```

---

## 🚢 Deployment

### Netlify Deployment

This site is configured for automatic deployment on Netlify:

1. **Connect your repository** to Netlify
2. **Build settings:**
   - Build command: `hugo --gc --minify -b $URL`
   - Publish directory: `public`
   - Hugo version: `0.83.1`

3. **Environment variables:**
   - `HUGO_VERSION`: `0.83.1`
   - `HUGO_ENABLEGITINFO`: `true`

### Manual Deployment

```bash
# Build the site
hugo --gc --minify

# Deploy the public/ directory to your hosting provider
```

---

## 🎨 Customization

### Site Configuration

Edit `config/_default/params.yaml` to customize:
- Site appearance and theme
- Contact information
- Social media links
- Menu configuration
- Feature toggles

### Adding Content

#### Publications
Add publications to `content/publication/`:
```bash
hugo new publication/my-publication/index.md
```

#### Blog Posts
Create new posts in `content/post/`:
```bash
hugo new post/my-new-post.md
```

#### Homepage Sections
Edit files in `content/home/` to customize homepage widgets.

### Custom Styling

Add custom SCSS to `assets/scss/custom.scss`:
```scss
// Your custom styles here
```

### Custom Layouts

Override theme layouts by copying them to `layouts/`:
```bash
# Example: Override a partial
cp themes/.../layouts/partials/widget.html layouts/partials/widget.html
```

---

## 📝 Content Management

### Content Types

- **Publications:** Research papers with BibTeX citations
- **Posts:** Blog articles and news
- **Events:** Talks, conferences, and presentations
- **Courses:** Academic courses and materials
- **Projects:** Portfolio projects and featured work

### Front Matter

All content files use YAML front matter:
```yaml
---
title: "My Page Title"
date: 2024-01-01
draft: false
featured: true
---
```

### Widgets

Homepage widgets are configured in `content/home/`:
- Hero section
- About
- Experience
- Publications
- Skills
- Contact
- And more...

---

## 🔧 Troubleshooting

### Common Issues

**Issue: Module not found**
```bash
hugo mod tidy
hugo mod download
```

**Issue: Styles not updating**
- Clear browser cache
- Restart Hugo server
- Check `assets/scss/custom.scss`

**Issue: PDF not embedding**
- Check `static/_headers` configuration
- Verify PDF path in content
- Check browser console for errors

**Issue: Build errors**
```bash
# Clean and rebuild
rm -rf public/
hugo --gc --minify
```

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 📧 Contact

**Tawaun A. Lucas**

- 🌐 Website: [www.tawaunlucas.com](https://www.tawaunlucas.com)
- 📧 Email: lucas.tawaun@gene.com
- 🐦 Twitter: [@LucasTawaun](https://twitter.com/LucasTawaun)
- 📍 Location: San Francisco, CA

---

## 🙏 Acknowledgments

- Built with [Hugo](https://gohugo.io/)
- Theme by [Wowchemy](https://wowchemy.com/)
- Deployed on [Netlify](https://netlify.com)

---

<div align="center">

**Made with ❤️ using Hugo and Wowchemy**

🌐 **[Visit the Live Site → www.tawaunlucas.com](https://www.tawaunlucas.com)**

⭐ Star this repo if you find it helpful!

</div>
