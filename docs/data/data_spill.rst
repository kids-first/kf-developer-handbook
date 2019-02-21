Data Spills
===========

A data spill is the accidental or deliberate exposure of information into an
uncontrolled or unauthorised environment, or to persons without a need-to-know.

There are many examples of data spills, but for the purposes of this guide,
we will focus on the exposure of sensitive clinical research data in a public
GitHub repository and what to do if this happens.

What is Sensitive Data?
-----------------------
Even though the Kids First project does NOT currently include PHI
(protected health information) data, it does still include data that is
considered sensitive and cannot be exposed to the public.

Sensitive data in the Kids First project is any clinical research data
that has not been approved by the Kids First (Data Coordinating Center) DCC
for public release.

Examples of Kids First sensitive data include but are not limited to:

    - A participant's demographics such as gender, ethnicity, race, ethnicity
    - A participant's biospecimen info such as tissue type, anatomical site
    - A participant's diagnosis info such as the diagnosis name
    - A participant's genomic data such as DNA sequencing files

*Note - a Participant is person participating in a Kids First research study*


What is NOT Sensitive Data?
---------------------------

Any Kids First clinical research data that has been approved by the Kids First
DCC for public release

Identifiers (non-PHI of course) such as Kids First IDs (i.e. PT_00001111),
IDs in the raw clinical data provided by Kids First researchers
(i.e. PID0001, SS-H02, etc.)

One caveat is that you can have sensitive data inside a **private Kids First
GitHub repository**. Since the repository is private and within the Kids First
GitHub organization it is in a controlled environment with limited exposure
to appropriate persons.

Manage a Data Spill
-------------------

What should you do if you accidentally pushed sensitive data to a public GitHub
repository? Let's take a real scenario that recently happened::


    You finish developing a feature branch, make a pull request against the
    master branch, get that request approved and merge the feature branch into
    master.

    Two days go by and you finally realize the output of one your unit
    tests accidentally made it into the pull request that merged into master.
    That output contained clinical research data from one of the Kids First
    studies 😳.


Checklist
^^^^^^^^^

1. **Notify Manager/Team**
    Let the appropriate people know as soon as possible.

    Email or send a message on Slack to Allison Heath
    (heathap@email.chop.edu) or your manager. Include the Kids First Technical
    Project Manager, Bailey Farrow (farrowb@email.chop.edu) on the message

    If you are not the owner of the repository where the sensitive data
    was pushed, then also let the owner know. You will need their help to
    do the clean up.

2. **Notify Consumers and Contributors**

    Work with the repository owner to notify anyone who might have cloned or
    forked the repository. Let them know that they should
    refrain from pulling from or pushing anything to the repository on GitHub
    until further notice is given. Later on you'll need to notify them on how
    to proceed with use of the code or development.

3. **Make the GitHub repository Private**

    Ask the owner of the repository to make it private or do it yourself
    if you have privileges.

4. **Notify GitHub Support (support@github.com)**

    If the sensitive data was part of any pull requests, you will need to
    contact GitHub Support to help remove all traces of the data. You
    should do this first, **BEFORE** following GitHub's steps to clean up your
    repo history (step 4 of this list).

    Example Email::

        Hello,

        I am emailing to ask for help in removing sensitive data
        that was pushed to a public GitHub repository. I need GitHub's help
        to remove cached views and references to the sensitive data in pull
        requests on GitHub.

        Details:

        Repository: <link to repo on GitHub>
        Files to Remove:
            - <URL to files in GitHub>
        Pull Request where files were introduced: <link to PR on GitHub>

        <Any other pertinent information>

        Thank you very much in advance!

5. **Backup Your Repository**

    If you haven't done this already, backup your repository. Note that
    this is only for backup/archival purposes. You won't be using this version
    of the repository in the future.

5. **Clean up Repository History**

    **Do not begin this step until** after GitHub support confirms they have
    deleted the affected pull requests.

    Follow GitHub's recommended steps `here <https://help.github.com/en/articles/removing-sensitive-data-from-a-repository>`_
    to remove the sensitive data from your repository's history.

    GitHub recommends using the open source repo cleaner tool `BFG`, which
    is simple, fast, and works well.

    In the last step of the clean up where you need to push the clean
    history to the remote, you may need to have the repository owner
    temporarily lift the force push protection on the master branch.

6. Notify People Cleanup is Complete
    Notify people from steps 1 and 2 that the clean up is complete

    For people in step 2, let them know the repository's history has been
    cleaned up/overwritten, ask them to delete any clones or forks they have
    and pull down new ones.

7. **Fill out an Incident Report**

    TODO - Instructions and link to incident report template
