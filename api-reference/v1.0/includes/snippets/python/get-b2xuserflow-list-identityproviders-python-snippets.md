---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity.b2x_user_flows.by_b2x_identity_user_flow_id('b2xIdentityUserFlow-id').identity_providers.get()


```