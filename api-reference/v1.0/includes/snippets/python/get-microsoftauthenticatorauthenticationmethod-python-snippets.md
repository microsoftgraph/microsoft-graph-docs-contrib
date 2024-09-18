---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.users.by_user_id('user-id').authentication.microsoft_authenticator_methods.by_microsoft_authenticator_authentication_method_id('microsoftAuthenticatorAuthenticationMethod-id').get()


```