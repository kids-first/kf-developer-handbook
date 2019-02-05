Distributed Data Types
======================

The Kids First is responsible for distributing a wide variety of data, in many different formats.

Genomic Data
------------

Raw Reads - `.fastq`, `.fq`
+++++++++++++++++++++++++++

`.fastq` and `.fq` are files that contain raw read data from the sequencer.
These files contain simple ACTG nucleotide sequences and corresponding quality information.

`Read more about FASTQ <https://en.wikipedia.org/wiki/FASTQ_format>`_


Aligned Reads - `.bam`, `.cram`
+++++++++++++++++++++++++++++++

`.bam` and `.cram` are formats that contain sequencer reads that have been aligned with a base genome.

`Read more about BAM <https://samtools.github.io/hts-specs/SAMv1.pdf>`_
`Read more about CRAM <https://samtools.github.io/hts-specs/CRAMv3.pdf>`_

Index Files - `.bai`, `.crai`, `.tbi`
+++++++++++++++++++++++++++++++++++++

Because genomic files can often reach up to several hundred gigabytes per file, they are often accompanied by an index file to reduce seek time.

`Read more about Tabix index files <https://samtools.github.io/hts-specs/tabix.pdf>`_

Variant Calls - `.vcf`, `.gvcf`
+++++++++++++++++++++++++++++++

`.vcf` and `.gvcf` are analyisis upon `.bam` and `.cram` files.

`Read more about VCF <https://samtools.github.io/hts-specs/VCFv4.2.pdf>`_
`Read more about GVCF <https://software.broadinstitute.org/gatk/documentation/article.php?id=4017>`_


Imaging Data
------------

DICOM
+++++

Dicom files are a general file format that can hold various types of data, although they will typically contain imagery in the context of Kids First.

`Read more about the DICOM format <https://www.dicomstandard.org/current/>`_

Slide Images - `.svs`
+++++++++++++++++++++

`.svs` files are high-resolution images of tissue slides.
The format is similar to `.tiff`, but with a hierarchical structure.

`Read more about the SVS format <https://openslide.org/formats/aperio/>`_
