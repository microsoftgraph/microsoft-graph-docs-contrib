---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.users.by_user_id('user-id').authentication.platform_credential_methods.by_platform_credential_authentication_method_id('platformCredentialAuthenticationMethod-id').delete()


```