# Portfolio Website

A minimalistic portfolio website built with Jekyll and hosted on GitHub Pages. Features a clean design with red, white, and black color scheme, responsive layout, dark mode toggle, and easy content management through markdown files.


## 📁 File Structure Overview

```
portfolio-website/
├── _config.yml                 # Jekyll configuration & site settings
├── _layouts/                   # HTML templates for different page types
│   ├── default.html           # Main layout (header, nav, footer)
│   ├── post.html              # Blog post layout
│   └── portfolio.html         # Portfolio item layout
├── _includes/                  # Reusable HTML components (currently empty)
├── _posts/                     # Blog posts (markdown files)
│   ├── 2024-01-15-welcome-to-my-blog.md
│   └── 2024-02-01-building-responsive-layouts.md
├── _portfolio/                 # Portfolio items (markdown files)
│   ├── portfolio-website.md
│   └── task-manager-app.md
├── assets/                     # Static assets
│   ├── css/
│   │   └── main.css           # All website styles
│   └── js/
│       └── main.js            # JavaScript functionality
├── pages/                      # Static pages
│   ├── index.html             # Home page
│   ├── blog.html              # Blog listing page
│   ├── portfolio.html         # Portfolio listing page
│   └── about.md               # About page
├── .github/workflows/          # GitHub Actions for deployment
│   └── deploy.yml
├── vendor/bundle/              # Gem dependencies (auto-generated)
├── _site/                      # Generated static site (auto-generated)
├── Gemfile                     # Ruby gem dependencies
├── .gitignore                 # Files to ignore in version control
└── README.md                  # This file
```

### Useful Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Liquid Template Language](https://shopify.github.io/liquid/)
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

---

**Built with ❤️ using Jekyll and hosted on GitHub Pages.**

_Last updated: September 2025_
