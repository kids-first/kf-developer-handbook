Bucket Service
==============

.. figure:: https://raw.githubusercontent.com/kids-first/kf-api-bucketservice/master/docs/bucket_service.svg?sanitize=true
   :alt: Bucket Service
   :align: center

`GitHub Repository <https://github.com/kids-first/kf-api-buckteservice>`_

The Bucket Service controls configuration of S3 buckets for new studies.

It provides a simple REST API in a lambda behind API Gateway that is only
available internally to the VPC.

The primary method of invocation is through creating a new study through the
:ref:`Data Service`.

Behavior
--------

The Bucket Service will only *create* new buckets, it will not remove old
buckets, even when they are removed within the :ref:`Data Service`. This is to
protect against accidental deletion of data.

Bucket Configuration
--------------------

A few different settings are applied to a new bucket upon creation.

Naming
++++++

Study buckets are named in the form `kf-study-{region}-{env}-{kf id}`. Here,
`kf id` is lowercase and uses a hyphen, `-`, in place of the underscore, `_`,
to conform to s3 naming standards. The data recovery buckets are named in the
form `kf-study-{region}-{env}-{kf id}-dr`. Where `region` is a different aws
region than the primary study bucket, to ensure regional redundancy.


Access Logging
++++++++++++++

S3 access logging is turned on so that an audit log is available for objects
within the new study bucket.

Encryption
++++++++++

Encryption is enabled for the bucket meaning that new objects are encrypted in
place for security purposes.

Replication
+++++++++++

Cross region replication is enabled for the bucket so that a redundant backup
is available in case of some region-wide failure of S3. The data recovery
bucket, suffixed with `-dr`, uses `Glacier <https://aws.amazon.com/glacier/>`_
tier storage to reduce costs of the redundency.

Versioning
++++++++++

Object versioning is enabled to allow replication, but also make historical
versions of a file available in the case that a file is overwritten with
incorrect data.
