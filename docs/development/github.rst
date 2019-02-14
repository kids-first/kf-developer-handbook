******
GitHub
******

Kids First uses Github exclusively for it's revision control as well as issue
tracking, release tagging, and providing hooks to other systems. Take a look at
the `Kids First Organization <http://github.com/kids-first/>`_ on GitHub. Read
more

Issues
======

Github Issues are used to maintain a backlog of work to be done for each
repository as well as estimate and schedule work using Zenhub.

Creating Issues
---------------

Issues may be created by users or internal developers for a handful of reasons
from questions to feature requests to bugs. Creation of an issue should ideally
happen the moment a bug is found or a new feature is desired to promote a
shared awareness of that issue and provide a place to track it. Although Zenhub
provides an overview of all issues in the organization, issues inherently
belong to only one repository. When creating an issue, it is best to target and
phrase it towards a single repository. If an issue seemingly spans many
repositories, it likely needs to be broken down into more precise tasks.

Issue labels (See Labels_) should be chosen as needed to easily sort through
the backlog. Assignees should be appointed to an issue once they have
volunteered to address the issue, or, at the latest, have begun work on it.
There currently is no standard across D3b for formatting an issue body and
should be implemented on a repository level. If a repository has an *Issue
Template*, make sure to follow it!

Finding Issues
--------------

.. _ShortAnchor:

Labels
======

.. image:: _static/images/reposummary.png

Repositories across the D3b Github organization that have frequent user
feedback and bug reports should use our standard set of labels to tag issues
shown. Labels act as a means of filtering categories of issues and providing
summaries of effort completed in release notes. Users that are not part of the
organization may not add labels themselves, so please add labels as you see
necessary to new issues. The **help wanted** label is a special label that is
displayed in repository summaries on Github (See the *11 Issues need help* .
Use it to mark issues that are self-contained and do not require in-depth
knowledge of how the code base works. This tag is useful for guiding new
members or external contributors looking to get involved to issues that will be
easy for them to accomplish.

Creating a Pull Request
=======================

Creating a pull request is the first step to getting new code merged back into
the code base. Opening of a new pull request may signify that changes are ready
for review, or that the author wishes to give visibility into their current
status. This section outlines the common standards and practices around the
pull request and review process.

Commit Messages
===============

Commit messages are vital in being able to navigate a code base's history.
There are many resources providing best practices for commit messages
\cite{beams, socommits}.

We require commits to be prefixed with a single emoji that appropriately
summarizes the the gist of the commit. This is helpful in allowing one to scan
through the commit log visually inside of Github (Figure
\ref{fig:commithistory}) or be able to perform summary analysis inside of
release notes or when analyzing git activity as a whole. When adding an emoji
to the commit message, use the colon-ated version as opposed to the actual
unicode symbol, eg: `:sparkles:`. For inspiration of what emoji may be most
appropriate, see the gitmoji guide \cite{gitmoji}.

Keeping a Tidy Commit Log
-------------------------

In addition to best practices outlined in Section \ref{commits}, care should be
taken to avoid introducing unhelpful commits such as merges of master into a
feature branch. Often, a feature branch will become stale during development as
other features are merged into master. Instead of using the {\em Update} button
in Github to merge the latest master into the feature branch, one should opt to
rebase the branch on the latest master. This will avoid adding many {\em Merged
branch master} commits into a feature branches


Pull Request Titles
===================

Pull request titles should begin with an emoji, similar to commit messages.
This provides similar benefits to commit message emojis where past pull
requests may quickly be scanned and summarized (Figure \ref{fig:prhistory}).

Labeling Pull Requests
======================

.. image:: _static/images/labels.png

The labels on pull requests are shared with those in issues (Labels_). Pull
requests should be labeled appropriately so that they may be filtered and
analyzed easily.

One special label that applies only to pull requests is the {\em
ready-for-review} label. Marking an open pull request with this label signals
to other developers that it is ready for a code review. This label may also be
used by automated tooling to send notifications on un-reviewed pull requests

Requesting Reviews
==================

Reviewers may be requested in Github inside of a pull request (Figure
\ref{fig:requestreviewer}). This will notify the user via Github notifications
and email, if the user has them enabled. Github notifications can be easily
missed, so it is advised to use direct messing in Slack if the request is
urgent.

Testing
=======

Commit hooks should trigger testing integrations upon any push to master or a
branch with an open pull request, at the least. Among these integrations should
be at least on test runner that will run the repositories unit tests and report
status back to Github. Having tests is critical to ensuring that new features
are hardened for future development. Tests for new features in a pull request
are expected to have tests included at the time of review. Existence and
functionality of these tests should be checked as part of the review process.

Status Checks
=============

Status checks is a feature in Github that listens to services that run in
response to git hooks (Figure \ref{fig:statuschecks}). Pull requests will be
prevented from merging until each of these services reports back positively on
the state of the code. In addition to services, reviews are may also be
included as status checks, requiring one or more approvals from reviewers
before being marked as ok.

License
=======

Kids First uses the Apache 2.0 \cite{apache2} license exclusively for all
public repositories. The file should be placed in the root of the directory
with the name {\em LICENSE}. The Apache 2.0 license may be easily added from
the root repository view on Github using {\em add new file} and naming it
LICENSE. This will present a {\em Choose license template} button to the right
of the file name where the Apache 2.0 License may be chosen to automatically
populate the file (See Fig \ref{fig:addlicense}).
