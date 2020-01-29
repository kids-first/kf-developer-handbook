Genomic Harmonization
=====================

.. figure:: /_static/images/genomic_data_flow.png
   :alt: Genomic data flow diagram
   :align: center

   Diagram of the flow of genomic data within Kids First with respect to
   harmonization processes.

The Gist
--------

The overview of the sequence of events to collect, harmonize, and distribute
genomic data is given below:

1) Sequencing center deposit data into S3 buckets provided by Kids First
2) Harmonization projects are set up in Cavatica as a workspace to harmonize
   this data
3) The S3 bucket is mounted into the harmonization projects using a read-write
   user so that the data may be processed in Cavatica
4) The Kids First bioinformatics (bix) team harmonizes the data by applying
   pipelines within Cavatica.
5) Data that has been harmonized is made available to a Cavatica delivery
   project by mounting the bucket to it with a read-only user.
6) Investigators are invited to the Cavatica project so that they may access
   their harmonized data.
7) After the six-month embargo period has expired, the harmonized data is
   provided on the Kids First portal to a wider range of users.

More details about the different steps are provided in the following sections.


Receiving Data
--------------

Kids First will receive genomic data in an S3 bucket specific to a study.
This data is transferred into the ``source/`` prefix within the bucket
by the sequencing site.
The file structure of delivered files is not consistent nor enforced between
studies and is usually unique to the sequencing center providing the data.

.. Note::
   Many early studies received data in buckets that were provisioned
   per-sequencing center.
   Some studies may still have extraneous data scattered in these legacy
   buckets rather than in the per-study buckets.


Cavatica Project Setup
----------------------

Studies are set up with at least two projects: one for the final delivered
data, and one or more for harmonization work to be done in.
When a study is ready to be harmonized, the delivery project is created under
the ``kids-first-drc`` Cavatica account and one or more harmonization projects
are created under the ``kfdrc-harmonization`` user depending on what workflows
are desired.

A typical set of project ids for a study might look something like:

.. code::

   kfdrc-harmonization/<Kids First Study ID>-bwa-mem
   kfdrc-harmonization/<Kids First Study ID>-gatk-haplotypecaller
   ...
   kids-first-drc/<Kids First Study ID>

Upon setting up a new harmonization project, members of the bioinformatics
are added to the projects so that they may begin creating harmonization or
analysis tasks.


Mounting Volumes
----------------

Cavatica allows S3 buckets to be accessed within tasks and workflows by
mounting them as 'volumes'.
To provide access to data for harmonization, the study bucket is mounted as
a volume using read/write permissions in the harmonization projects.
When harmonized data is to be shared with investigators or the public, the
bucket is mounted as a volume in the delivery project with read-only
permissions.


Harmonizing
-----------

Harmonizing genomic data involves aligning incoming data on a common reference
genome through a standard toolchain so as to provide a uniform surface for
any further analysis.
In Kids First, the standard for alignment (what it takes to become
'harmonized') is a worflow using `BWA-MEM <http://bio-bwa.sourceforge.net/>`_
aligned on the
`hg38 <https://www.ncbi.nlm.nih.gov/assembly/GCF_000001405.26/>`_ reference
genome.
The CWL workflow for the alignment process can be found
`here <https://github.com/kids-first/kf-alignment-workflow>`_.

.. Note::
   Sequencing centers often provide aligned data as opposed to unaligned reads.
   If the alignment has been produced using the same workflow as above, Kids
   First will consider it already 'harmonized'. If not, the data will be re-
   aligned using the above standard.

The act of harmonizing occurs by having a bioinformatics team member invoke
the alignment pipeline on sequence read files received directly from a
sequencing center.
Invoking harmonization tasks involves some manual work as data is often
provided in various formats from sequencing centers requiring some effort to
sort through and select the correct inputs.
After this effort is completed, however, all output will be uniform allowing
further analysis pipelines to be run with little additional effort.

Post-Harmonization Analysis
---------------------------

After files have been aligned during the harmonization phase, additional
analysis may be perfomed depending on investigator requirements and funding.
This analysis operates in a similar manner to harmonization, except that the
input files are either output from the harmonization or derived from the
harmonization results in some manner.

Each individual analysis workflow is run within its own Cavatica project
specific to that study and pipeline but sharing the same storage volume
within S3 to access and save data.

.. Note::
   Historically, harmonization projects may have had multiple workflows
   within the same project. Future harmonization and analysis tasks should be
   expected to remain segregated between projects specific to the workflow
   being executed.

A list of the workflows that may be used for further analysis include:

- BWA-MEM-BQSR
- STAR-2-Pass
- GATK-HaplotypeCaller
- GATK-GenotypGVCF
- GATK-GenotypGVCF-VQSR
- Strelka2-somatic-mode
- Mutect2-somatic-mode
- Mutect2-tumor-only-mode
- Vardict-single-sample-mode
- Vardict-paired-sample-mode
- Control-FREEC-somatic-mode
- Control-FREEC-germline-mode
- StringTie-expression
- Manta-somatic
- Manta-germline
- Lumpy-somatic
- Lumpy-germline
- RSEM
- Kallisto
- STAR-Fusion
- Arriba
- Peddy


Relocating Result Files
-----------------------

Pipelines run in Cavatica have their results output back into
Cavatica-controlled storage and need to be moved back into Kids First owned
buckets.
This occurs, when all harmonization tasks have been completed and verified for
a project, by copying the files into the mounted S3 volume and removing the
original files from Cavatica to save costs.
The files are copied into prefixes within the mounted study bucket that
correspond to the pipelines from which they resulted.


Study Bucket Organization
-------------------------

Study buckets use the naming convention:
``kf-study-us-east-1-prd-<Kids First Study ID>``
They contain both the original data from the sequencing centers and harmonized
output data.
The sequencing center, or ``source``, data is minimally organized and kept
mostly in the same structure that it was received in.
The harmonized data is partitioned roughly into categories that are determined
by what workflow the results came from.
Below is the desired structure for a study bucket's organization around the
genomic data:

.. code::

    s3://kf-study-us-east-1-prd-<Kids First Study ID>/
    ├── harmonized-data/
    │   ├── aligned-reads/
    │   ├── raw-gvcf/
    │   ├── simple-variants/
    │   ├── family-variants/
    │   ├── copy-number-variations/
    │   ├── structural-variations/
    │   ├── gene-expressions/
    │   └── gene-fusions/
    └── source-data/
        └── {files_from_SeqCenter}

.. Note::
   Older studies may store harmonized data in a slightly different structure
   within the ``harmonized/`` prefix.
   The above is a newer standard for files within the ``harmonized-data/``
   prefix.


Tagging and Metadata
--------------------

Cavatica supports tagging and metadata attributes on files, which may be
utilized by Cavatica users for filtering and running tasks.
This metadata is populated on files by copying additional data about the file
from the Kids First :ref:`architecture/services/dataservice:Data Service` after
the files have been moved to their final location within their Kids First
bucket.


Delivering Data
---------------

Data is delivered to the investigator by inviting the investigator's Cavatica
user to the delivery project under the ``kids-first-drc`` account as a member
with `copy` permissions.
The delivery project exposes the harmonized data through files which have been
mounted from the Kids First study bucket and tagged in Cavatica with relevant
information from the :ref:`architecture/services/dataservice:Data Service`.


Publicizing Data
----------------

After a study's embargo period is up, a study's data may be made available to
the general research audience.
This is done through public releases in the
:ref:`architecture/services/coordinator:Release Coordinator` to list the study
and its data on the Kids First portal.

The data will become available either directly through the S3 buckets via
:ref:`architecture/services/gen3:Gen3` or through the bucket mounted in
Cavatica.
