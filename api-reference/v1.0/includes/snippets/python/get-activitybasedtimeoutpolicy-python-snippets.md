---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.policies.activity_based_timeout_policies.by_activity_based_timeout_policy_id('activityBasedTimeoutPolicy-id').get()


```