<p align="center">
  <img src="docs/_static/images/logo.png" alt="Kids First Developer Handbook Logo" height="250">
</p>

# Kids First Developer Handbook

## Adding to the handbook

Get started by cloning into the codebase and setting up the repository.

```shell
git clone git@github.com:kids-first/kf-developer-handbook.git
cd kf-developer-handbook
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
```

To run the docs and auto-reload them as they are edited, run:

```shell
sphinx-autobuild docs/ build -p 8000
```

The docs will be available on localhost:8000 by default.

## Contributing a change

Make changes and additions to the documention source files in the `docs/`
directory, then commit these files.
Push and make a pull request for review as would normally be done.
When the branch has been merged, the CircleCI will automatically build and
push the site to the `gh-pages` branch which will be deployed on github
pages at https://kids-first.github.io/kf-developer-handbook.

All contributed markup should pass `doc8 docs` without any warnings.
