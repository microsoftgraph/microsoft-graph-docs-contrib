---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.tenant_relationships.managed_tenants.tenant_groups.by_tenant_group_id('tenantGroup-id').get()


```