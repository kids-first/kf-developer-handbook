# Kids First Developer Handbook

## Adding to the handbook

Get started by cloning into the codebase and setting up the repository.
```
git clone git@github.com:kids-first/kf-developer-handbook.git
cd kf-developer-handbook
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
```

To run the docs and auto-reload them as they are edited, run:
```
sphinx-autobuild source docs
```
The docs will be available on localhost:8000 by default.

## Contributing a change

Make the changes and additions inside the `source/` directory.
Commit these files, then build a new site and make a new commit with the files
in the `docs/` directory.
```
sphinx-build source docs
git add docs
git commit -m ":recycle: Update site"
```
Push and make a pull request for review as would normally be done.
