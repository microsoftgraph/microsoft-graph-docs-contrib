---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_app_management.managed_app_policies.by_managed_app_policy_id('managedAppPolicy-id').get()


```