---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.users.by_user_id('user-id').authentication.fido2_methods.by_fido2_authentication_method_id('fido2AuthenticationMethod-id').delete()


```