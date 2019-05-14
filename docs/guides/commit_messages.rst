Commits
=======

.. figure:: /_static/images/commithistory.png
   :alt: Screenshot of commit history in a repository
   :height: 400
   :align: center

   Commit history in the Kids First Dataservice repository

Commit messages are vital in being able to navigate a code base's history as
well as enable easier and more productive code reviews. There are many
resources providing best practices for commit messages:

 - `Git Commits <https://chris.beams.io/posts/git-commit/>`_
 - `Standard to follow when writing git commit messages <https://stackoverflow.com/questions/15324900/standard-to-follow-when-writing-git-commit-messages>`_
 - `git-scm Commit Guidelines <https://www.git-scm.com/book/en/v2/Distributed-Git-Contributing-to-a-Project#_commit_guidelines>`_

Being proficient at the following git commands will greatly help to keep
commits tidy:

 - `git-rebase <https://www.git-scm.com/docs/git-rebase>`_
 - `git-blame <https://www.git-scm.com/docs/git-blame>`_
 - `git-cherry-pick <https://git-scm.com/docs/git-cherry-pick>`_

Here are more detailed how-tos using some of these commands with examples:

 - `Rewriting History <https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History>`_
 - `Interactive Staging <https://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging>`_


Commit Summaries
----------------

The first line of the commit message should be a short (max 72 characters,
counting the markdown tag emoji as only one charecter) line summarizing the
nature of the commit.
It should start with an appropriate emoji followed by a space
then a short summary of the change made in the commit.
When adding an emoji to the commit message, use the colon-ated version as
opposed to the actual unicode symbol, eg: `:sparkles:`. For inspiration of what
emoji may be most appropriate, see the `gitmoji guide
<https://gitmoji.carloscuesta.me>`_.


Commit Descriptions
-------------------

It is encouraged to have descriptions that outline the logic behind a change
and why it was done.
This is helpful for documentation, providing context to the reviewer, and
for the author of the commit to validate that the commit's scope is concise
and fits neatly into a single logical concept.


Commit Scope
------------

Often, when a branch is under development locally or when a partial review is
needed, the commit log may contain a number of temporary or unnecessary
commits.
These commits are useful for intermediate reviewing and developing, but should
be squashed before the final review and merge.
This ensures that the master history is free from changes that are immediately
removed or altered in subsequent commits.
For example, the following may be a history of an in-progress feature to add
a new foo endpoint:

.. code-block:: text

    ✅ Add tests for foo endpoint
    ✨ Add new foo endpoint
    ♻️ Changes foo Content-Type response header to json
    ♻️ Chanegs foo Content-Type response header to csv
    🚧 Add debugging prints
    🐛 Fixe indentation in foo endpoint
    ✨Add limit parameter to foo endpoint

This is a log that clearly tracks the development process of the feature and
may be useful for the developer or reviewer to parse.
However, from the context of the history of the master branch, it is overly
verbose as the interest is primarily in what the final product was, as opposed
to the intermediate thinking.
Ultimately, this branch's commits should be made more concise so as to capture
only the major logic changes:

.. code-block:: text

    ✅ Tests for foo endpoint
    ✨ Adds new foo endpoint


Commits in Response to Reviews
------------------------------

Code reviews will often request changes to be made.
This presents the decision to either create new commits that make changes in
response to these reviews, or to modify existing commits with the changes.
Regardless of which path or combination of the two is chosen, commits like the
following are not helpful and should not be made:

.. code-block:: text

    👌 Addresses review concerns

This may be acceptable as a WIP Commit, but it's possible that it actually
contains multiple logical changes that were introduced across multiple previous
commits.
For example, the above commit may have instead been authored as:


.. code-block:: text

    ✅ Add missing test for date field
    🐛 Fixes doc typo

This format will allow the commits to be more seamlessly squashed into the
commits that introduced the original logic without the author having to break
up the single commit and then squash.
