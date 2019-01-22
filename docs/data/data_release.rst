Data Releases
=============

The act of releasing or updating data to the public is an integral part of Kids First.
The process is deeply inspired by, but separate from, software releases.

Release Process
---------------

Data releases require coordination between several different services and people.
The Release Coordinator exists to manage this process of organizing processes and sign-offs.

Initiating a Release
++++++++++++++++++++

When new data has been added and finalized in the Data Service, and is now wanted for display on the portal, a new release should be initiated.
This is done on a study basis, with the possibility to include many or all studies in a release.
After selecting candidiate studies for the release within the Release Coordinator, the release may be started by staging the the new data.

Staging
+++++++

A release is staged by performing transformations from the Data Service's data model necessary to display and publicize the data.
These process include the heavy transformations, but do not include any actions that make any of the data public.
Once these operations have been completed, a release is said to be `staged`.

Evaluating
++++++++++

Once a release has reached the `staged` state, it is to be evaluated for publication.

Publishing
++++++++++

An administrator may `publish` a release once it has been deemed worthy.
This operation involves all services making the result of their staging operation public.


Version Numbers
---------------

Semantic version numbers are assigned to releases just as with software.
For any new release, an incremented patch number will be assigned, eg: `0.0.0`.
If that release fails or is not `published`, the next release will be assigned the next increment of the patch `0.0.1`.   
When finally a release is `published`, it will be promoted by incrementing its major or minor version and resetting the patch number.
This is where the semantic version changes from the norm, as the previous version has been removed and replaced with a new major or minor version number.
For example, if candidate release `0.0.1` is published, it will become `0.1.0` and `0.0.1` will no longer exist.

Major and Minor Versions
++++++++++++++++++++++++

The difference between major and minor releases is purely conceptual, there is no technical difference.
A major release often involves a shape change in the data model and thus requires all previously released studies to be published again.
A minor release will usually be updates or additions to select studies.
