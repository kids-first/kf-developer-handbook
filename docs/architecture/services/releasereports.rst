Release Reports
===============

.. figure:: https://raw.githubusercontent.com/kids-first/kf-task-release-reports/master/docs/release_reports.svg?sanitize=true
   :alt: Release Reports
   :align: center

`GitHub Repository <https://github.com/kids-first/kf-task-release-reports>`_

The Release Reports Task is a `Release Task Service <_release-task-service>`_
that collects summary statistics for a group of studies in the
:ref:`architecture/services/dataservice:Data Service` at the time a new release
is started. It exposes these stats through a basic REST API for consumers such
as the :ref:`architecture/services/coordinator:Release Coordinator` to
consume and display.
