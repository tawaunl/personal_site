---
# An instance of the Contact widget.
# Documentation: https://sourcethemes.com/academic/docs/page-builder/
widget: contact
active: true
# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 130

title: Contact
subtitle:

content:
  # Automatically link email and phone or display as text?
  autolink: true
  email: lucas.tawaun@gene.com
  

  # Email form provider
  form:
    provider: netlify
    netlify:
      captcha: true
  
  appointment_url: 'https://app.usemotion.com/meet/tawaun-lucas/meeting'

  
design:
  columns: '2'
---

<center> 

<i class="fa fa-calendar" aria-hidden="true" style="color:#035AA6"></i> {{< staticref "booking" "newtab" >}}Schedule a meeting with me{{< /staticref >}} 

</center>

