---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.authentication.passwordless_microsoft_authenticator_methods.by_passwordless_microsoft_authenticator_authentication_method_id('passwordlessMicrosoftAuthenticatorAuthenticationMethod-id').get()


```