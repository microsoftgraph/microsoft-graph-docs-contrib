---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.policies.mobile_device_management_policies.by_mobility_management_policy_id('mobilityManagementPolicy-id').included_groups.get()


```