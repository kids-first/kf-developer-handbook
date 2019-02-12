Micro Services
==============

Kids First uses a `Microserivces <https://microservices.io/patterns/microservices.html>`_ pattern when developing applications.
This allows quick and decoupled development and deployment process at the cost of more complicated design.

Application Types
-----------------

A handful of canned application types have been defined to allow for easier bootstrapping of new services.
These application types are defined through `Terraform <https://www.terraform.io/>`_ configuration files, describing the infrastructure, and a `Jenkins Pipeline <https://jenkins.io/doc/book/pipeline/>`_ describing the continous delivery process of the code base.


Service Directory
-----------------

A directory of different micro services in Kids First is listed below.

.. toctree::
   :maxdepth: 1
   :glob:

   services/dataservice
   services/coordinator
   services/bucketservice
   services/releasereports
   services/ego
   services/gen3
