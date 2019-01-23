Data Service
============

.. figure:: https://raw.githubusercontent.com/kids-first/kf-api-dataservice/master/docs/dataservice.png
   :alt: Data Service
   :align: center

`GitHub Repository <https://github.com/kids-first/kf-api-dataservice>`_

`Production URL and Swagger Documentation <http://kf-api-dataservice.kidsfirstdrc.org>`_

The Data Service provides a data access layer and defines the primary data model for Kids First data.

Data Access Layer
-----------------

The Data Service exposes an HTTP REST API for interacting with data stored in the Kids First.

Data Model
----------

.. figure:: https://raw.githubusercontent.com/kids-first/kf-api-dataservice/master/docs/erd.png
   :alt: Data Service
   :target: https://raw.githubusercontent.com/kids-first/kf-api-dataservice/master/docs/erd.png
   :align: center
   :height: 300px

   The Entity Relation Diagram of the Data Service's data model. Click for full size.


Internal Design
---------------

.. figure:: /_static/images/dataservice_internal.png
   :alt: Data Service Internal Design
   :align: center

The dataservice is a rudimentary `Flask <http://flask.pocoo.org/>`_ application that implements a RESTful JSON API.
It stores most data inside a `PostgreSQL <https://www.postgresql.org/>`_ database, with the exception of a few components of the data model.
These exceptions are fields related to files that are instead deferred to Indexd, which is another internal service used for federating data files.
The Data Service handles these hybrid interactions internally making them transparent to the end user of the api.
