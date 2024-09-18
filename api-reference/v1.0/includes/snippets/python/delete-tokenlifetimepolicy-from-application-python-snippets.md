---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.applications.by_application_id('application-id').token_lifetime_policies.by_token_lifetime_policy_id('tokenLifetimePolicy-id').ref.delete()


```