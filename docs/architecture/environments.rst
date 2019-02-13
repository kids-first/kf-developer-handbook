Environments
============

Kids First is deployed through three levels of cloud environments, with the
final being the live, production website. Services and infrastructure are
mirrored throughout the different cloud environments to ensure consistency in
the deployment and functionality between different software versions. Here, the
different environments, their use, and restrictions are outlined.

.. figure:: /_static/images/environment_stability.png
   :alt: Environments
   :align: center


Local
-----

The local environment is not a cloud environment, but rather a developer's
computer. There is no deployment pipelines here as the only concern is
developing a codebase. The developer is in charge of configuring dependencies
as needed for development.


Development - dev
-----------------

The development environment is primarily used to ensure that deployment
pipelines and infrastructure are being configured correctly. Most deployed
codebases will deploy feature branches into the development environment. The
development environment is strictly confined to internal users only.

Quality Assurance - qa
----------------------

The QA environment is used for evaluating and testing the latest versions of
software in conjunction with one another before releasing them to production.
The QA environment is mostly confined to internal users only, although some
exceptions may be made using whitelists if there are external stakeholders who
may need to involved with testing features before they are released.

Production - prd
----------------

Production has the latest released software versions and is open to the
internet. Codebases require rigorous approvals before reaching this stage, as
outlined in :ref:`The Feature Lifecycle`.
