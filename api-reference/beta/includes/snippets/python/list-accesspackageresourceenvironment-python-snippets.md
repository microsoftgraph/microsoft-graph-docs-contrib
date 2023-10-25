---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = AccessPackageResourceEnvironmentsRequestBuilder.AccessPackageResourceEnvironmentsRequestBuilderGetQueryParameters(
		filter = "originSystem eq 'SharePointOnline'",
)

request_configuration = AccessPackageResourceEnvironmentsRequestBuilder.AccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.acces_package_resource_environments.get(request_configuration = request_configuration)


```