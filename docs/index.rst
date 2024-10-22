.. Kids First Developer Handbook documentation master file, created by
   sphinx-quickstart on Wed Dec 19 10:27:37 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Developer Handbook
==================

.. image:: _static/images/logo.svg
   :alt: Kids First Developer Handbook

.. toctree::
   :maxdepth: 2
   :caption: Contents:


.. toctree::
   :glob:
   :maxdepth: 1
   :caption: Development

   development/feature_lifecycle
   development/repositories
   development/software_releases
   development/cicd

.. toctree::
   :glob:
   :maxdepth: 1
   :caption: Data

   data/*

.. toctree::
   :glob:
   :maxdepth: 3
   :caption: Architecture

   architecture/*

.. toctree::
   :maxdepth: 1
   :glob:
   :caption: Guides

   guides/branches
   guides/commit_messages
   guides/pull_requests
   guides/python
   guides/javascript

.. toctree::
    :caption: Other Kids First Docs

    Airflow <https://kids-first.github.io/kf-airflow-dags>
    Ingestion Library <https://kids-first.github.io/kf-lib-data-ingest>
    Study Creator API <https://kids-first.github.io/kf-api-study-creator>
    Release Coordinator API <https://kids-first.github.io/kf-api-release-coordinator>
