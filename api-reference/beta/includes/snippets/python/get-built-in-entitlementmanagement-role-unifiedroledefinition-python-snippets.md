---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.role_management.entitlement_management.role_definitions.by_unified_role_definition_id('unifiedRoleDefinition-id').get()


```