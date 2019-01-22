***************************
The Anatomy of a Repository
***************************

Keeping code repositories consistent is important to allow developers and interested users to navigate and contribute to the Kids First codebase.
Here, we lay out the fundamental components that each repository under the `Kids First Organization <http://github.com/kids-first/>`_ should include.


Header Preamble
===============

.. figure:: _static/images/dataservice-repo-header.png
   :alt: Dataservice's Repository Header Information
   
   The header components of the `Kids First Dataservice <http://github.com/kids-first/kf-api-dataservice>`_

Name
----

All repositories are namespaced with the organization prefx, *kf*.
Most also include sub-spaces, such as: *api*, *task*, and *ui*.

Description
-----------

The repository description should contain an emoji to characterize the repository along with a brief description of what the codebase is.

Link
----

The repository link should ideally link to the production application where the code is running.
If that does not make sense for the codebase, a public facing documentation or endpoint is also a good choice.

Wikis and Projects
------------------

As shown by the navigation tabs, repositories that do not use *Projects* and *Wikis* features on GitHub disable them in the repository settings.

Tags
----

Tags should be attached to describe the codebase and make it easier to discover when searching by, eg: *python*.


Required Files
==============

.. figure:: _static/images/coordinator-repo-files.png
   :alt: Release Coordinator's File Structure

   The file structure of the root of the Release Coordinator's codebase

.gitignore
----------

An appropriate `.gitignore` is important to prevent against commiting of files that do not need to be tracked.
This file's contents will be determined by the codebase.

Dockerfile
----------

All codebases that are to be deployed should contain a `Dockerfile` that will run the service in a container.

LICENSE
-------

A copy of the Apache 2.0 license should be included under the `LICENSE` file in the root of all public repositories.
This file can automatically be added with the GitHub interface by clicking `Create new file`, then entering `LICENSE` as the file name.
A button prompting to choose the type of license will be displayed which will offer Apache 2.0 as one of the options.

Jenkinsfile
-----------

Repositories that are built and/or deployed should contain a `Jenkinsfile` that will include the module name of the Jenkins pipeline to use.

README.md
---------

The `README.md` file is important for providing more detailed information about the codebase.

README
======

.. figure:: _static/images/dataservice-repo-readme.png
   :alt: Dataservice's README

   The header of the Dataservice's README file as seen on its GitHub repository

The README is important for introducing users and developers alike to a codebase.

Branding
--------

Public repositories should maintain a consistent Kids First logo with the title of the repository's application in the head of the README file.

Badges
------

Status badges for any `Status Checks`_ that provide them should be listed directly under the repository's branding image.

Title
-----

The title should be included as a heading directly after the badges and be followed by a brief description of the codebase.

Content
-------

The rest of the README should provide some basic documentation that is unique to the codebase itself.
This should, at a minimum, explain how to use and develop the code.

Status Checks
=============

Status Checks are automated checks that test various aspects of the code to help ensure quality.
Having relevant checks is a low-cost method of improving reliability of a code base.

.. figure:: _static/images/dataservice-status-checks.png
   :alt: Screenshot of a pull request's status checks inside a pull request

   Status checks as reported within a pull request against the Dataservice

Pull Request Reviews
--------------------

At least one review should be required from another developer for a pull request.
This setting can be configured under branch protection settings in a repository.

CircleCI
--------

CircleCI can be used to run automated testing such as linting checks for style and unit tests for functionality.
It is a good idea to reqiure CircleCI for at least one of these checks.

Jenkins
-------

The Jenkins check will report on the deployment status of the branch.
If it fails, it may indicate that there is a problem with the integration pipeline which may mean that a later deployment could fail if not resolved.

Netlify
-------

If a codebase is being deployed with netlify, a number of checks indicating the health of the deployment can be enabled.
Netlifiy can also be configured to post review comments with links to the deployed branches.


