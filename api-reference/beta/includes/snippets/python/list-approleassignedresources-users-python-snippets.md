---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.app_role_assigned_resources.app_role_assigned_resources_request_builder import AppRoleAssignedResourcesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AppRoleAssignedResourcesRequestBuilder.AppRoleAssignedResourcesRequestBuilderGetQueryParameters(
		select = ["displayName","accountEnabled","servicePrincipalType","signInAudience"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.me.app_role_assigned_resources.get(request_configuration = request_configuration)


```