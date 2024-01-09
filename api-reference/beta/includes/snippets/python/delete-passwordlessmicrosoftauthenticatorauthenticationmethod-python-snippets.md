---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.users.by_user_id('user-id').authentication.passwordless_microsoft_authenticator_methods.by_passwordless_microsoft_authenticator_authentication_method_id('passwordlessMicrosoftAuthenticatorAuthenticationMethod-id').delete()


```