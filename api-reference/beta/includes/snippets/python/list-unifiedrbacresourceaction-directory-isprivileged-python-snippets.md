---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.roleManagement.directory.resourceNamespaces.item.resourceActions.resource_actions_request_builder import ResourceActionsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ResourceActionsRequestBuilder.ResourceActionsRequestBuilderGetQueryParameters(
		filter = "isPrivileged eq true",
)

request_configuration = ResourceActionsRequestBuilder.ResourceActionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.resource_namespaces.by_unified_rbac_resource_namespace_id('unifiedRbacResourceNamespace-id').resource_actions.get(request_configuration = request_configuration)


```