# Lucky Opportunity Organization — Website

A fast, modern, accessible website for **Lucky Opportunity Organization**, a Sacramento nonprofit empowering youth, families, and the homeless. Built as a static site (HTML/CSS/JS, no build step) for instant, free hosting on Netlify.

## Pages
- `index.html` — Home
- `about.html` — About / mission / values
- `programs.html` — Programs & services
- `events.html` — Events overview
- `get-involved.html` — Volunteer sign-up (Netlify form) + ways to give
- `contact.html` — Contact info + message form (Netlify form)
- `thank-you.html` — Form confirmation page
- `privacy.html`, `accessibility.html` — Legal/info pages

## Structure
```
css/styles.css     Design system (brand colors, components)
js/main.js         Mobile nav, active link, footer year
assets/logo.svg    Recreated wordmark + emblem
netlify.toml       Publish dir, security headers, caching, redirects
sitemap.xml, robots.txt
```

## Forms (Netlify Forms)
The contact and volunteer forms use Netlify Forms (`data-netlify="true"`). They work automatically once deployed to Netlify — submissions appear under **Forms** in the Netlify dashboard. Set up email notifications there. Forms do not work when opening files locally; deploy to test them.

## Deploy to Netlify
1. Push this folder to a GitHub repo.
2. In Netlify: **Add new site → Import from Git**, pick the repo.
3. Build command: *(none)* · Publish directory: `.`
4. Deploy. Then add your custom domain (`luckyopportunityorganization.org`).

Or drag-and-drop this folder onto https://app.netlify.com/drop for an instant deploy (forms still work).

## Updating the logo
The logo is recreated as a scalable SVG (`assets/logo.svg`) and the header/footer use a CSS "L" emblem. To use the original artwork instead, save it as `assets/logo.png` and swap the `src` in `index.html`'s `.hero-logo`.

## Local preview
```
cd luckyopportunity
python3 -m http.server 8000
# visit http://localhost:8000
```

## Editing content
- Brand colors live in `:root` at the top of `css/styles.css`.
- Phone, email, and Instagram appear in each page's header/footer and on the contact page.
