---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.policies.authentication_strength_policies.by_authentication_strength_policy_id('authenticationStrengthPolicy-id').get()


```