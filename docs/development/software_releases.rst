*****************
Software Releases
*****************

Software releases well-oiled and frictionless to allow smooth deployment of frequent code updates and features.
Having a process that makes releases and their changes highly visible is also an important part to improving situational awareness among stake holders.

.. figure:: _static/images/dataservice-release-1.3.1.png
   :alt: Screenshot of Dataservice Release 1.3.1

   `Dataservice Release 1.3.1 <https://github.com/kids-first/kf-api-dataservice/releases/tag/1.3.1>`_ with summary statistics and change log

CHANGELOG
=========

The `CHANGELOG` lives in the root of a repository and contains a list of pull requests that have been merged by version.
The `CHANGELOG` is mandatorily updated as part of the release process with the release number and a list of pull requests merged since the last release.
To make `CHANGELOG` generation easier, the `Release Maker <https://github.com/kids-first/kf-release-maker>`_ may be used to generate a list of pull requests and summary statistics for a release.

Version Numbers
===============

Release versions follow the `SemVer <https://semver.org/>`_ convention.
Versions numbers must be applied for each public release and optionally for intermediate versions that are not released, though this is currently not done.

Authoring a Release
===================

To author a release, follow the steps outlined in `Release Maker <https://github.com/kids-first/kf-release-maker>`_.

These are:

1. checkout a new branch from master in the repository nameb `release-x.y.z` using SemVer versioning
2. Update existing version numbers in the code to the new version number
3. Generate the `CHANGELOG` string using `release` from the `Release Maker <https://github.com/kids-first/kf-release-maker>`_ and prepend it to the `CHANGELOG`
4. Commit the files using ```:label: Release x.y.z``` message and push the branch
5. Open a pull request with the `CHANGELOG` in the body for the branch and request stakeholders to accept
6. When approval is obtained, merge and tag the new head of `master` with a new release tag
7. Final approval from operations will be needed once Jenkins is ready to deploy to production
