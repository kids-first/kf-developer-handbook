*********************
The Feature Lifecycle
*********************

Contributing code is an obvious necessity in progressing any software project.
However, there is and endless amount of ways to do so. By standardizing the
process and documenting it thorougly, we hope to make contributing code to any
Kids First repository a consistent and straightforward experience. Following is
the sequentially organized steps to contribute code to any Kids First codebase.

Development
===========

Any Kids First codebase should provide some information to get started within
the README of the GitHub repository. Assuming that the repository follows the
standard practices as outlined in :ref:`The Anatomy of a Repository` , the
README should clearly define any requirements and where to get them, how to run
the application in a local development environment, and how to run tests to
ensure functionality. If the application is complex and requires other services
like databases or other Kids First applications, a `docker-compose.yml` file
should be available that will configure these services locally for development
and testing.

Branching
=========

A new branch is created from `master` to start accepting new commits.

Read more in the :ref:`Branches` Guide

Commiting Changes
=================

Code changes are added through commits to a new feature branch forked from
`master`.

Read more in :ref:`Commit Messages` Guide

Creating a Pull Request
=======================

Creating a pull request is the first step to getting new code merged back into
the code base. Opening of a new pull request may signify that changes are ready
for review, or that the author wishes to give visibility into their current
status.

Read more in the :ref:`Pull Requests` Guide

Status Checks
=============

Status checks will be initiated automatically upon commiting to a branch. Some
status checks will be required, while others may not be, depending on the
decisions made by the mantainers of the repository. See :ref:`Status Checks`
for some of the different checks in use. A pull request may only be merged if
it has passed the required status checks.

Pull Request Reviews
====================

Reviews will be performed by at least on developer for a pull request. The
feature developer will work with the reviewer(s) until the changes are
satisfactory and meet standards. Once the pull request has recieved the
necessary positive reviews and has successful status checks, the branch is
ready to merge.

Read more in the :ref:`Pull Requests` Guide

The Merge
=========

Once pull request checks have passed, a feature is ready to be merged into
`master`. The branch owner should first check that a branch is up to date with
`master` and perform a rebase if necessary. Merging `master` back into the
feature branch via the GitHub UI **should not be done** so as to avoid
pontentially many merge commits in the repository's history. When a branch has
been updated, it is the responsibility of the branch owner to merge the branch
into `master`.

QA Deployment
=============

At this stage, the new feature will be in the `master` branch of the codebase
and should have been deployed into the QA enviornment, making it available
internally. This provides time to discover any extraneous bugs or integration
issues before it is released.

Release
=======

A release is tagged directly on the `master` branch of the repository. This
will trigger a deployment of the codebase at that commit to production and the
general public.

Read more about :ref:`Software Releases`
