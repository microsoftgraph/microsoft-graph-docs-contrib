---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.authentication.fido2_methods.by_fido2_authentication_method_id('fido2AuthenticationMethod-id').get()


```