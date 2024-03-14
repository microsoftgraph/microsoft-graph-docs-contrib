---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.role_management.directory.resource_namespaces.by_unified_rbac_resource_namespace_id('unifiedRbacResourceNamespace-id').resource_actions.by_unified_rbac_resource_action_id('unifiedRbacResourceAction-id').get()


```