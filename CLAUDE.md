# CLAUDE.md

## Project Overview

Personal portfolio website for Kevan Ahlquist at **www.kevanahlquist.com**. This is a static site — plain HTML, CSS, and vanilla JavaScript with no build step or framework.

## Tech Stack

- HTML5, CSS3, vanilla JS
- Bootstrap + jQuery (in `/snow` template)
- Font Awesome for icons
- Custom "District Pro" font
- Docker (nginx) for local/containerized serving
- GitHub Pages for hosting (deployed via `gh-pages` branch)

## Repository Structure

```
index.html          # Main landing page
projects.html       # Projects showcase
calendar/           # "Every Day Calendar" mini-project
css/                # Stylesheets and custom font files
images/             # Favicon and images
snow/               # Start Bootstrap landing page template
osm_pathfinding/    # Git submodule (OpenStreetMap pathfinding project)
build.sh            # Docker build script
Dockerfile          # nginx container config
CNAME               # GitHub Pages custom domain
```

## Development

There is no build process. Edit HTML/CSS files directly and open them in a browser.

To serve locally with Docker:
```sh
./build.sh
docker run -p 8080:80 kevan/kevanahlquist.com
```

## Deployment

The site is published via the `gh-pages` branch. **Do not push directly to `gh-pages`** — that publishes the site immediately. Work on feature branches instead.

## Conventions

- Keep it simple — no frameworks, bundlers, or unnecessary tooling
- No linting, testing, or formatting tools are configured
- The `/snow` directory is a vendored Bootstrap template; avoid modifying it unless necessary
- `osm_pathfinding/` is a git submodule — use `git submodule update --init` if needed
