Pull Requests
=============

Pull requests are a useful tool introduced by GitHub to provide feedback and quality assurance on new code before it is accepted into a codebase.

Opening a Pull Request
----------------------

You've cloned a codebase, branched master, made some changes, and now want contribute them back to the codebase.
To do so, start by pushing the feature branch with the changes to the remote repository, eg `git push origin my-feature`.
A pull request now may be created on GitHub by following the git message returned from the service in the terminal, through a notification on the repository home page, or the standard method of `selecting a branch and clicking 'New pull request' <https://help.github.com/articles/creating-a-pull-request/#creating-the-pull-request>`_.

Choosing the Base Branch
------------------------

More often than not, when using our stardard branching strategy (see the :ref:`Branches` Guide), a pull request will be made against the master branch.
This indicates the intention to contribute code directly to the active head of the repository.
However, there may be situtations where that is not desired.
For example, if `Author A` opens a pull request `PR 1` for branch `feat-1` against the `master` branch, and `Author B` would like to offer contributions to the `feat-1` branch, then `Author B` may branch `feat-1` to `feat-2`, make suggested changes, then create `PR 2` for branch `feat-2` against `feat-1`.
This would offer `PR 2` as a forum for changes to `PR 1`, which, once a consensus is reached, would be merged into `PR 1` and presumably then merged into the `master` branch.

Pull Request Descriptions
-------------------------

Pull requests should contain summary descriptions which outline the changes and intents of the contribution.
If the pull Request is closing a GitHub issue, make sure to mention the issue in the description, eg: `Closes #123`.
See `Closing issues using keywords <https://help.github.com/articles/closing-issues-using-keywords>`_ for more information on this feature.

.. figure:: /_static/images/proper_pr_sidebar.png
   :figwidth: 70%
   :width: 70%
   :align: center
   :alt: Pull Request sidebar
   
   Sidebar of a Pull Request in GitHub displaying completed Reviewers, Assignees, and Labels fields

Reviewers
---------

Reviewers should be requested for feedback on a pull request.
According to the :ref:`Anatomy of a Repository`, there should be a status check in place for all repositories that requires at least one reviewer to give an approval to the pull request.

Assignees
---------

If a contribution has a definitive author or authors, it is good to keep track of them through the `Assignees` option.

Labels
------

Labels are useful for categorizing a pull request or issues.
It is helpful for distilling open pull requests or summarizing changes in releases.


Reviews are required from at least one other developer for pull requests against `master`.
If a feature introduced by a pull request potentially impacts other applications or developers, those stakeholders should also be requested for review and provide their consent via an approval.

`About pull request reviews <https://help.github.com/articles/about-pull-request-reviews/>`_
