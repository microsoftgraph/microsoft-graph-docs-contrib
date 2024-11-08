---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.role_management.directory.resource_namespaces.by_unified_rbac_resource_namespace_id('unifiedRbacResourceNamespace-id').resource_actions.by_unified_rbac_resource_action_id('unifiedRbacResourceAction-id').get()


```