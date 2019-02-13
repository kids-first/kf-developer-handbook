Ego
===


`GitHub Repository <https://github.com/overture-stack/ego>`_

Ego provides an authentication service for other Kids First services.


.. figure:: /_static/images/ego.png
   :alt: Interaction with ego

   Typical interaction with ego from a web application

Use Within Applications
-----------------------

Front facing applications such as the portal or release coordinator UI interact
with Ego to obtain a token that may be used to authenticate with other
services. In the above example, the portal has a short exchange with Ego
wherein an Ego token is aquired. From there, the portal will store the token
then use it to verify the current user has been authenticated when talking with
other services.

Services that recieve these requests containing the user's token will verify
that the token was indeed minted by Ego by either passing the token back to Ego
for verification, or verifying that it has been signed by Ego by using Ego's
public key.

Social Authentication
---------------------

Ego allows users to authenticate and register through various single sign-on
providers (SSO) such as Google, Facebook, and LinkedIn. When a user
authenticates with one of these providers using the OAuth2 flow, an access
token is returned to the user which is then sent to Ego. Ego will register this
user, if they have never been seen before, and issue its own token to the user
to include with all future requests.

Roles
-----

There are currently only two roles that are used in Ego: ``user`` and
``admin``.

Groups
------

Groups add another level to user permissions inside Ego, although they are
currently only used to differentiate internal users from others for analytical
purposes.

Services
--------

Services may also be registered via Ego so that they may be authenticated by
other services.
