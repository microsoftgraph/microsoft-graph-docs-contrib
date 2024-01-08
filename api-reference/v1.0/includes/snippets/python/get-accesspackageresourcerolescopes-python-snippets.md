---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageItemRequestBuilder.AccessPackageItemRequestBuilderGetQueryParameters(
		expand = ["resourceRoleScopes($expand=role,scope)"],
)

request_configuration = AccessPackageItemRequestBuilder.AccessPackageItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').get(request_configuration = request_configuration)


```