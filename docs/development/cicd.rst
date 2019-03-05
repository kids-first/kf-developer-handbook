*********************
Continuous Deployment
*********************

Config Repositories
===================

In addition to creating the main code repository, each code repository that is
to be deployed must have a second, *private* repository that contains the
infrastructure and CI/CD strategy for that code base. The repository for the
config *must match the name of the code repository suffixed with *-config**.
This is a rule of thumb that is followed throughout so that the configuration
may be discovered automatically by other scripts. In addition to the naming
standard, the repository should be *private*. It is best practice to keep the
infrastructure obscured and prevent external contributions as the config
contains code that is often run at elevated privileges in our environments.

Environments
============

Often, entire software stacks are deployed concurrently in many different
*environments*. This provides us with a handful of benefits:

 - Assurance that there is always a stable deployment for end-users
 - Provides a safe sandbox to develop new features in isolation
 - Insures the boilerplate to re-deploy a new environment exists

We divide our environments into three primary stages that are tightly couple to
our Continuous Integration


dev
---

The development environment (dev) is intended as sandbox for  new features and
code bases. It is the most unstable environment with no guarantees on data
availability. When new code is pushed to a feature branch, it automatically
triggers its CI pipeline to test, build, and, deploy to the development
environment. The branch must pass through testing and deployment successfully
to before it is allowed to be merged to insure that it will successfully deploy
to the next stage.

qa
--

The QA environment provides a mostly-stable environment where new features may
be used, evaluated, and tested before being released. This is where
integration test-suites may be run to ensure that all services cooperate
nicely. The data in QA should also be close to production quality to fully flex
all features. New features enter QA after merging a feature branch into the
master branch of a code base.

prd
---
The production environment (prd) is the end-user environment. This is
critically stable as it must be exposed to the public. To introduce features
into prd, a repository must go through the release process. This includes
creating a pull request for the version change, signoff on it from any
potential stakeholders, merging, and finally acquiring final approval from an
administrator to deploy the infrastructure and code into the environment.
