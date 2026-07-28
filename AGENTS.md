# Agent notes — nicola.github.io

## Site architecture

- Work on the `gh-pages` branch: it contains the Jekyll source.
- The `master` branch contains the generated static site and is force-pushed by the deployment task.
- Do **not** edit generated files on `master` directly.
- `Rakefile` is the canonical publish workflow. It builds `_site`, pushes source to `gh-pages`, then replaces `master` with `_site` and adds `.nojekyll` so GitHub Pages serves the generated site rather than rebuilding it.

## Local setup

This machine uses macOS system Ruby 2.6. The `Gemfile` intentionally caps `ffi` below 1.17 for Ruby compatibility. Dependencies are installed locally at `vendor/bundle`.

Before running Jekyll or Rake, especially after a previous deploy (which deletes `vendor/` while creating `master`), run:

```bash
bundle install --path vendor/bundle
```

Useful commands:

```bash
bundle exec jekyll serve --host 127.0.0.1 --port 4020
bundle exec jekyll build
```

The site may emit existing Liquid and Sass deprecation warnings. Treat them as warnings unless the command exits non-zero.

## Publishing

Run the rake task from `gh-pages` only:

```bash
bundle install --path vendor/bundle
bundle exec rake
```

It commits and pushes `gh-pages`, force-pushes generated output to `master`, and triggers GitHub Pages. Do not separately push `master` afterward.

GitHub Pages occasionally returns the generic deploy error `Deployment failed, try again later` even when the build/artifact job passed. Check runs with:

```bash
gh run list --limit 5
gh run view <run-id> --log-failed
```

Retry only the failed deploy job with:

```bash
gh run rerun <run-id> --failed
```

## Homepage

- Homepage layout: `_layouts/new.html`
- Homepage CSS: `assets/css/nicolacard.css`
- Homepage avatar: `assets/img/avatar-2020.png`
- The avatar PNG includes transparent whitespace. The CSS offsets its background positioning so the visible drawing touches the bottom and left viewport edges; preserve this behavior when replacing the image.
