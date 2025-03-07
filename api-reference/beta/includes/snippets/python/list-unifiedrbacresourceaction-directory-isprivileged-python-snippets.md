---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.role_management.directory.resource_namespaces.item.resource_actions.resource_actions_request_builder import ResourceActionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ResourceActionsRequestBuilder.ResourceActionsRequestBuilderGetQueryParameters(
		filter = "isPrivileged eq true",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.role_management.directory.resource_namespaces.by_unified_rbac_resource_namespace_id('unifiedRbacResourceNamespace-id').resource_actions.get(request_configuration = request_configuration)


```