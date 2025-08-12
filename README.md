# SheetInvestor Website

Static site for SheetInvestor — root-relative links, responsive layout, and a single, standardized footer with social + legal.

## What's inside
- `/assets/site.css` — shared styles (functions grid, steps, footer, responsive tweaks)
- `/assets/icons.svg` — SVG sprite for X and Facebook icons
- Standardized footer across all pages (Product, Support, Legal, Connect)
- Root-relative internal links (ready for custom domain)
- `.nojekyll` so GitHub Pages serves files as-is

## Local preview
Use a simple local server (recommended):
```bash
python3 -m http.server 8000
# then open http://localhost:8000
```

## Deploy to GitHub Pages
1. Create a new GitHub repo (e.g., `sheetinvestor-site`).
2. Run the deploy script below **from this folder** (replace USERNAME and REPO):

```bash
bash deploy.sh USERNAME sheetinvestor-site
```

Then in GitHub:
- Settings → Pages → Source = **Deploy from a branch**, Branch = **main**, Folder = **/**

## Custom domain
If you use a custom domain, add a `CNAME` file in the repo root with your domain (one line).
Root-relative links are already correct for custom domains.

© 2025 SheetInvestor
