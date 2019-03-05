Gen3
====

Gen3 is a collection of services that handle distribution of files in Kids
First.

Indexd
------

The indexd service catalogs files in Kids First. This includes tracking
information about file name, size, hash, storage location, and access controls.
The :ref:`architecture/services/dataservice:Data Service` interacts with
indexd to register files in coordination with its own internal model.

Fence
-----

Fence generates signed download urls for files within indexd depending on
whether or not a user is allowed permission to that file. Permission is
determined by whether a user has a certain access code in their eRa account
that matches one of the access codes on the corresponding indexd document. For
example, a user would like to download a file that has ``phs000178`` in its
acl. To be able to generate a signed url and download the file, fence will
check if the currently authenticated user has ``phs000178`` in their eRa
projects list.
