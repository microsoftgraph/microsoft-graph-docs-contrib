---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.tenant_relationships.managed_tenants.windows_protection_states.by_windows_protection_state_id('windowsProtectionState-id').get()


```