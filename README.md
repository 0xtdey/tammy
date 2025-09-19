# Tammy's Portfolio Website

A minimalistic portfolio website built with Jekyll and hosted on GitHub Pages. Features a clean design with red, white, and black color scheme, responsive layout, dark mode toggle, and easy content management through markdown files.

## 🌐 Live Website

- **Local Development**: http://localhost:4000
- **GitHub Pages**: https://tammy.github.io (when deployed)

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

## 🚀 Quick Start

### Prerequisites

- Ruby 3.2+
- Bundler gem
- Git

### Initial Setup

1. **Clone the repository**:

   ```bash
   git clone https://github.com/tammy/portfolio.git
   cd portfolio
   ```

2. **Install dependencies**:

   ```bash
   bundle install
   ```

3. **Start development server**:

   ```bash
   bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload
   ```

4. **Open in browser**: http://localhost:4000

## ✍️ Adding New Content

### Adding a New Blog Post

1. **Create a new file** in `_posts/` directory with the format:

   ```
   YYYY-MM-DD-title-with-hyphens.md
   ```

2. **Add front matter** at the top of the file:

   ```markdown
   ---
   layout: post
   title: "Your Awesome Blog Post"
   date: 2024-03-15
   categories: [technology, tutorial]
   excerpt: "A brief description of your post that appears in listings"
   author: "Tammy"
   ---

   # Your Post Content

   Write your blog post content here using markdown...
   ```

3. **Save the file** - Jekyll will automatically regenerate the site

### Adding a New Portfolio Item

1. **Create a new file** in `_portfolio/` directory:

   ```
   your-project-name.md
   ```

2. **Add front matter**:

   ```markdown
   ---
   title: "Amazing Project Name"
   date: 2024-03-15
   technologies: ["React", "Node.js", "MongoDB"]
   github: "https://github.com/tammy/project"
   demo: "https://your-project-demo.com"
   excerpt: "Brief project description for listings"
   ---

   # Project Overview

   Detailed description of your project...
   ```

### Adding a New Static Page

1. **Create a new file** in the root directory:

   ```markdown
   ---
   layout: default
   title: "Page Title"
   permalink: /page-url/
   ---

   # Page Content

   Your page content here...
   ```

2. **Add to navigation** by editing `_layouts/default.html`:
   ```html
   <li>
     <a href="{{ '/page-url/' | relative_url }}" class="nav-link">Page Name</a>
   </li>
   ```

## 🎨 Customization

### Changing Colors and Fonts

Edit `assets/css/main.css`:

```css
:root {
  --color-primary: #dc2626; /* Change primary color (red) */
  --color-black: #000000; /* Text color */
  --color-white: #ffffff; /* Background color */
  --font-serif: "Instrument Serif", serif; /* Heading font */
  --font-mono: "JetBrains Mono", monospace; /* Content font */
}
```

### Typography Hierarchy

- **Instrument Serif** is used for:

  - Site logo/title
  - Navigation links
  - Hero title ("Hello, I'm Tammy")
  - Section titles (Blog, Portfolio, About Me)
  - "Let's Connect" heading

- **JetBrains Mono** (coding font) is used for:
  - All blog and portfolio content headings
  - Body text
  - Code blocks
  - Technical content

### Dark Mode

The dark mode toggle is implemented with:

- CSS custom properties that change based on `[data-theme="dark"]`
- JavaScript that saves user preference in localStorage
- Automatic theme persistence across sessions

## 🔧 Site Configuration

### Main Settings (`_config.yml`)

```yaml
# Site Information
title: Tammy
email: tammy@example.com
description: "A minimalistic portfolio showcasing my work and thoughts"
url: "https://tammy.github.io"

# Build Settings
markdown: kramdown
highlighter: rouge
permalink: /:categories/:title/

# Collections (for portfolio items)
collections:
  portfolio:
    output: true
    permalink: /portfolio/:name/
```

### Key Configuration Options

- **title**: Your name (appears in navbar and page titles)
- **email**: Your contact email
- **description**: Site description for SEO
- **url**: Your GitHub Pages URL
- **permalink**: URL structure for blog posts

## 🐛 Debugging and Troubleshooting

### Common Issues and Solutions

#### 1. Jekyll Server Won't Start

**Error**: `Port 4000 is already in use`

**Solution**:

```bash
# Kill existing Jekyll processes
pkill -f jekyll

# Or kill specific ports
lsof -ti:4000 | xargs kill -9
lsof -ti:35729 | xargs kill -9

# Restart server
bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload
```

#### 2. CSS Not Loading

**Error**: `ERROR '/assets/css/main.css' not found`

**Solution**:

```bash
# Check if CSS file exists
ls -la assets/css/main.css

# If missing, recreate from backup or restart server
bundle exec jekyll clean
bundle exec jekyll serve
```

#### 3. Gem Dependencies Issues

**Error**: `Bundle install fails` or `Could not find gem`

**Solution**:

```bash
# Update Ruby gems
gem update --system

# Clear bundle cache
bundle clean --force

# Reinstall dependencies
bundle install
```

#### 4. Live Reload Not Working

**Error**: Live reload doesn't refresh browser

**Solution**:

```bash
# Start server with explicit live reload
bundle exec jekyll serve --livereload --force_polling

# Or without live reload
bundle exec jekyll serve --host 0.0.0.0 --port 4000
```

#### 5. Build Errors

**Error**: Jekyll build fails with syntax errors

**Solution**:

```bash
# Check build output for details
bundle exec jekyll build --verbose

# Common fixes:
# - Check YAML front matter syntax
# - Ensure proper markdown formatting
# - Verify file naming conventions
```

### Development Commands

```bash
# Build site without serving
bundle exec jekyll build

# Serve with different port
bundle exec jekyll serve --port 4001

# Clean generated files
bundle exec jekyll clean

# Build with future posts
bundle exec jekyll serve --future

# Serve in production mode
JEKYLL_ENV=production bundle exec jekyll serve
```

### Debugging Front Matter

Ensure proper YAML syntax:

```yaml
---
layout: post # No quotes needed for simple values
title: "Complex Title: With Colons" # Use quotes for complex strings
date: 2024-03-15 # Date format: YYYY-MM-DD
categories: [tech, tutorial] # Array format
tags: # Alternative array format
  - javascript
  - tutorial
---

```

### File Naming Conventions

- **Blog posts**: `YYYY-MM-DD-title-with-hyphens.md`
- **Portfolio items**: `descriptive-project-name.md`
- **Static pages**: `page-name.md` or `page-name.html`

## 🚀 Deployment

### GitHub Pages Deployment

1. **Create GitHub repository** named `tammy.github.io`

2. **Push your code**:

   ```bash
   git init
   git add .
   git commit -m "Initial portfolio website"
   git remote add origin https://github.com/tammy/tammy.github.io.git
   git push -u origin main
   ```

3. **Enable GitHub Pages**:

   - Go to repository Settings → Pages
   - Source: Deploy from a branch
   - Branch: main / (root)

4. **Site will be live** at: https://tammy.github.io

### Custom Domain (Optional)

1. **Add CNAME file** to root directory:

   ```
   yourdomain.com
   ```

2. **Configure DNS** with your domain provider:
   ```
   Type: CNAME
   Name: www
   Value: tammy.github.io
   ```

## 🔧 Advanced Features

### Adding Comments

To add comments to blog posts, consider:

- [Disqus](https://disqus.com/)
- [Utterances](https://utteranc.es/) (GitHub-based)
- [Giscus](https://giscus.app/) (GitHub Discussions)

### Analytics

Add Google Analytics by editing `_layouts/default.html`:

```html
<!-- Google tag (gtag.js) -->
<script
  async
  src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"
></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag() {
    dataLayer.push(arguments);
  }
  gtag("js", new Date());
  gtag("config", "GA_MEASUREMENT_ID");
</script>
```

### SEO Optimization

The site includes:

- Proper meta tags
- RSS feed (`feed.xml`)
- Sitemap (auto-generated)
- Semantic HTML structure

### Performance

Built-in optimizations:

- Minimal CSS (no frameworks)
- Optimized font loading
- Responsive images
- Fast Jekyll build times

## 🎯 Content Guidelines

### Blog Post Structure

```markdown
---
layout: post
title: "Descriptive Title"
date: YYYY-MM-DD
categories: [category1, category2]
excerpt: "Brief description (160 chars max for SEO)"
---

# Main Title

Brief introduction paragraph.

## Section Heading

Content with proper markdown formatting.

### Subsection

- Use bullet points
- For better readability

`code blocks`

> Blockquotes for emphasis

## Conclusion

Wrap up your thoughts.
```

### Portfolio Project Structure

```markdown
---
title: "Project Name"
date: YYYY-MM-DD
technologies: ["Tech1", "Tech2", "Tech3"]
github: "https://github.com/tammy/project"
demo: "https://project-demo.com"
excerpt: "One-sentence project description"
---

# Project Overview

What the project does and why it's important.

## Technical Implementation

### Architecture

- Technology choices
- Design decisions

### Key Features

- Feature 1
- Feature 2

## Challenges & Solutions

### Challenge 1

**Problem**: Description
**Solution**: How you solved it

## Lessons Learned

What you gained from this project.

## Future Enhancements

- [ ] Planned feature 1
- [ ] Planned feature 2
```

## 📱 Responsive Design

The site is fully responsive with breakpoints:

- **Mobile**: < 480px
- **Tablet**: 481px - 768px
- **Desktop**: > 768px

Key responsive features:

- Flexible grid layouts
- Scalable typography
- Touch-friendly navigation
- Optimized images

## 🔒 Security

Security considerations:

- All external links use `rel="noopener noreferrer"`
- Content Security Policy headers (via GitHub Pages)
- HTTPS by default
- No client-side user data storage (except theme preference)

## 📈 Monitoring

### Site Health

- **Build Status**: Check GitHub Actions tab
- **Uptime**: Monitor via GitHub Pages status
- **Performance**: Use Lighthouse for audits

### Analytics (if implemented)

Track:

- Page views
- Popular content
- User engagement
- Mobile vs desktop usage

## 🆘 Support

### Getting Help

1. **Check this README** for common issues
2. **Jekyll Documentation**: https://jekyllrb.com/docs/
3. **GitHub Issues**: Create issue in repository
4. **Jekyll Community**: https://talk.jekyllrb.com/

### Useful Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Liquid Template Language](https://shopify.github.io/liquid/)
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

---

**Built with ❤️ using Jekyll and hosted on GitHub Pages.**

_Last updated: September 2025_
