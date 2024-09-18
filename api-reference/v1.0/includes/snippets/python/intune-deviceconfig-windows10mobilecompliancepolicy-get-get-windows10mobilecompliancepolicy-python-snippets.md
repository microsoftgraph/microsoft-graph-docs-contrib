---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.device_compliance_policies.by_device_compliance_policy_id('deviceCompliancePolicy-id').get()


```