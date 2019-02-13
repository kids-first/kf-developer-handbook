Release Coordinator
===================

.. figure:: https://raw.githubusercontent.com/kids-first/kf-api-release-coordinator/master/docs/release_coordinator.png
   :alt: Release Coordinator
   :align: center

`GitHub Repository <https://github.com/kids-first/kf-api-release-coordinator>`_

`Production URL <https://kf-ui-release-coordinator.kidsfirstdrc.org/>`_

`Swagger Documentation <http://kf-release-coord.kidsfirstdrc.org/redoc/>`_

The Release Coordinator provides orchestration between services and people to
produce :ref:`Data Releases`.

Internal Design
---------------

.. figure:: /_static/images/release_coordinator_internal.png
   :alt: Release Coordinator internal service design
   :align: center

The Release Coordinator consists of a simple REST API implemented with the
`Django REST Framework <http://django-rest-framework.org/>`_ to service
requests from the internet, including the Release Coordinator UI.

Upon starting a release, the coordinator will enter into the release pipeline,
sending commands and monitoring status of tasks on external tasks that need to
be run for a release.

Requests are authenticated with Ego and are authorized based on the user's
roles. At the moment, all data is open for read, although performing actions,
such as creating a release, are reserved for users of the ADMIN role.

Cloudwatch issues periodic events to the API that will trigger internal checks
such as task health checks and release status checks. These requests are to
internet facing endpoints on the API, meaning they may also be triggered on
demand by a user.

Due to the need to communicate with a handful of external services, many
actions that require potentially long-lived or unreliable requests are defered
to a background worker service via a redis queue.

.. _release-task-service:

Task Services
-------------

Tasks are services that are invoked during the release process. These services
perform some necessary step of a release such as etl, syncing, or reporting.
