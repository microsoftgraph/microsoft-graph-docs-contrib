---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.users.by_user_id('user-id').authentication.passwordless_microsoft_authenticator_methods.by_passwordless_microsoft_authenticator_authentication_method_id('passwordlessMicrosoftAuthenticatorAuthenticationMethod-id').delete()


```