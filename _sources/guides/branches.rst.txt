Branches
========

The branching strategy in Kids First repositories is kept simple to reduce the amount of contextual awareness needed to keep branches in sync, understand the state of different branches, and reduce the number of often over-aged pull requests that need to be merged.

Kids First uses `GitHub flow <https://guides.github.com/introduction/flow/>`_ for its repositories whith release tags being made directly on `master`.
Branches ready for merge in a Pull Request are required to rebase on the latest master to ensure compatability.
Rebases are **required** over merges from master into the feature branch (easily done through the GitHub interface) to avoid commit histories full of updates from master.

Example
-------

.. figure:: ../_static/images/gitflow-Page-1.png
   :alt: Feature branch
   
   Development of a new feature on a feature branch

1. A developer begins work on a new feature by making commits to a new `myfeature` branch
2. Each commit pushed to GitHub will trigger status checks for the HEAD of the branch as well as deploy into the `dev` environment
3. The developer creates a Pull Request (#1) to merge `myfeature` into the `master` branch
4. Reviews are made and the developer continues modifying and adding commits to the `myfeature` branch
5. When reviewers and status checks are positive, the developer will `git rebase` on the latest master, then merge the pull request

.. figure:: ../_static/images/gitflow-Page-2.png
   :alt: Release to production
   
   Deployment of master to production through a release branch and tag

6. The new `HEAD` of `master` will trigger a new deployment to the `QA` environment
7. The new `HEAD` is to be deployed to the `production` environment, the :ref:`Software Releases` process of creating a version bump branch is followed
8. The version branch is merged back to `master` and the `HEAD` tagged with a release version and triggers a deployment to `production`

