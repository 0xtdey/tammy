---
layout: post
title: "Building a Minimalist Portfolio with Jekyll: From Markdown to Modern Web"
date: 2025-01-15
categories: [web-development, jekyll, tutorial]
excerpt: "Learn how I built this clean, minimalist portfolio website using Jekyll, markdown files, and modern web practices. A beginner-friendly guide to creating your own static site."
author: "Tammy"
---

# Building a Minimalist Portfolio with Jekyll: From Markdown to Modern Web

Ever wondered how modern, fast-loading websites are built without complex databases or server-side complications? Let me walk you through how this very website came to life using **Jekyll** - a simple yet powerful static site generator that transforms plain markdown files into beautiful, responsive websites.

## What is Jekyll?

Jekyll is a **static site generator** written in Ruby that takes your content written in markdown, applies layouts and styling, and generates a complete website made of static HTML, CSS, and JavaScript files. Think of it as a smart compiler that understands web development patterns.

### Why Choose Jekyll?

- **🚀 Lightning Fast**: Static files load incredibly quickly
- **📝 Markdown-Powered**: Write content in simple, readable markdown
- **🎨 Highly Customizable**: Full control over design and functionality
- **💰 Free Hosting**: Works perfectly with GitHub Pages
- **🔒 Secure**: No databases or server-side code to hack
- **📱 Responsive**: Mobile-friendly out of the box

## The Architecture Behind This Site

### 1. **Content Management**

Instead of a complex CMS, this site uses a simple file-based approach:

```
_posts/              # Blog posts in markdown
_portfolio/          # Portfolio items in markdown
pages/              # Static pages (About, etc.)
assets/             # CSS, JavaScript, images
_layouts/           # HTML templates
_config.yml         # Site configuration
```

Every blog post is just a markdown file with some metadata at the top (called "front matter"). Here's what a typical post looks like:

```markdown
---
layout: post
title: "My Awesome Post"
date: 2025-01-15
categories: [tutorial, web-dev]
---

# Your content starts here

Regular markdown content goes here...
```

### 2. **Design Philosophy**

The design follows a **minimalist approach** inspired by sites like [lelouch.dev](https://lelouch.dev/):

- **Clean Typography**: Instrument Serif for headings, JetBrains Mono for content
- **Simple Color Palette**: Red, white, and black for clarity
- **Responsive Layout**: Works beautifully on all devices
- **Dark Mode**: Toggle-able theme for user preference

### 3. **Technology Stack**

- **Jekyll**: Static site generator
- **Markdown**: Content writing format
- **SCSS/CSS**: Styling and theming
- **JavaScript**: Interactive features (dark mode toggle)
- **GitHub Pages**: Free hosting and deployment
- **GitHub Actions**: Automated deployment pipeline

## How It All Works Together

### The Magic of Jekyll

When you run Jekyll, here's what happens:

1. **Reads Configuration**: Jekyll loads `_config.yml` for site settings
2. **Processes Content**: Converts markdown files to HTML
3. **Applies Layouts**: Wraps content in HTML templates
4. **Compiles Assets**: Processes CSS and JavaScript
5. **Generates Site**: Creates a complete static website in `_site/`

### Content Creation Flow

Adding new content is incredibly simple:

1. **Create a markdown file** in the appropriate folder
2. **Add front matter** with metadata
3. **Write your content** in markdown
4. **Commit and push** to GitHub
5. **GitHub Pages automatically builds and deploys** your site

## Getting Started: Build Your Own

Want to create a similar portfolio? Here's your roadmap:

### Prerequisites

- Basic familiarity with command line
- Git and GitHub account
- Text editor (VS Code, Sublime, etc.)

### Step 1: Environment Setup

**Install Ruby and Jekyll:**

```bash
# On macOS
brew install ruby
gem install jekyll bundler

# On Ubuntu/Debian
sudo apt install ruby-full
gem install jekyll bundler

# On Windows
# Use Ruby Installer from rubyinstaller.org
```

### Step 2: Create Your Site

```bash
# Create new Jekyll site
jekyll new my-portfolio
cd my-portfolio

# Install dependencies
bundle install

# Start development server
bundle exec jekyll serve
```

Visit `http://localhost:4000` to see your site!

### Step 3: Customize Your Design

**Key files to modify:**

- `_config.yml` - Site configuration
- `_layouts/default.html` - Main page template
- `assets/css/main.scss` - Styling
- `index.md` - Homepage content

### Step 4: Add Content

**Create blog posts:**

```bash
# Add new post
touch _posts/2025-01-15-my-first-post.md
```

**Create portfolio items:**

```bash
# Create portfolio collection
mkdir _portfolio
touch _portfolio/my-project.md
```

### Step 5: Deploy to GitHub Pages

1. **Create GitHub repository** named `yourusername.github.io`
2. **Push your code** to the repository
3. **Enable GitHub Pages** in repository settings
4. **Your site is live** at `https://yourusername.github.io`

## Advanced Features You Can Add

### Collections

Jekyll's collections feature allows you to group related content:

```yaml
# _config.yml
collections:
  portfolio:
    output: true
    permalink: /portfolio/:name/
```

### Plugins

Extend functionality with Jekyll plugins:

- **jekyll-feed** - RSS feeds
- **jekyll-sitemap** - SEO sitemaps
- **jekyll-seo-tag** - Meta tags optimization

### Custom Liquid Tags

Create reusable components with Liquid templating:

```liquid
{% for post in site.posts limit:3 %}
  <article>
    <h2>{{ post.title }}</h2>
    <p>{{ post.excerpt }}</p>
  </article>
{% endfor %}
```

## Performance and SEO Benefits

### Speed Advantages

- **No Database Queries**: Content is pre-generated
- **CDN-Friendly**: Static files cache beautifully
- **Minimal Resources**: Low server requirements

### SEO Benefits

- **Fast Loading**: Google loves speedy sites
- **Clean URLs**: Customizable permalink structure
- **Meta Tags**: Easy SEO optimization
- **Mobile-Friendly**: Responsive design by default

## Helpful Resources

### Learning Resources

- **[Jekyll Documentation](https://jekyllrb.com/docs/)** - Official comprehensive guide
- **[Jekyll Themes](https://jekyllthemes.io/)** - Pre-built themes to start with
- **[Liquid Documentation](https://shopify.github.io/liquid/)** - Templating language
- **[Markdown Guide](https://www.markdownguide.org/)** - Master markdown syntax

### Inspiration

- **[lelouch.dev](https://lelouch.dev/)** - Minimalist design inspiration
- **[Jekyll Showcase](https://jekyllrb.com/showcase/)** - Amazing Jekyll sites
- **[GitHub Pages Examples](https://pages.github.com/)** - Real-world implementations

### Tools and Extensions

- **[Forestry](https://forestry.io/)** - CMS for Jekyll sites
- **[Netlify CMS](https://www.netlifycms.org/)** - Git-based content management
- **[Jekyll Admin](https://github.com/jekyll/jekyll-admin)** - Local admin interface

## Why This Approach Works

### For Developers

- **Version Control**: Your entire site is in Git
- **No Server Management**: Static hosting is simple
- **Fast Development**: Live reload during development
- **Easy Backup**: Everything is in your repository

### For Content Creators

- **Distraction-Free Writing**: Focus on content, not formatting
- **Future-Proof**: Markdown files are portable
- **Collaborative**: Easy to work with others via Git
- **Offline Capable**: Write anywhere, publish when ready

## Conclusion

Building a portfolio with Jekyll strikes the perfect balance between simplicity and power. You get the ease of writing in markdown with the flexibility of a fully customizable website. Whether you're a developer looking to showcase your work or a content creator wanting a fast, reliable platform, Jekyll provides an elegant solution.

The best part? Once you understand the basics, you can have a professional portfolio up and running in a weekend. No complex databases, no server maintenance, no monthly hosting fees - just pure, fast, beautiful web.

Ready to start building? Check out the [GitHub repository](https://github.com/tammy/portfolio) for this site's complete source code, or dive into the [Jekyll documentation](https://jekyllrb.com/) to begin your journey.

_Happy building! 🚀_

---

**Technical note**: This site uses Jekyll 3.10.0, deployed via GitHub Actions to GitHub Pages, with custom SCSS for styling and vanilla JavaScript for interactivity. The complete source code and deployment configuration are available in the project repository.

