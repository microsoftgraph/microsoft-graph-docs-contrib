---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.tenant_relationships.managed_tenants.managed_device_compliance_trends.by_managed_device_compliance_trend_id('managedDeviceComplianceTrend-id').get()


```