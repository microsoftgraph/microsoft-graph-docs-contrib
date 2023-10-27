---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilder.AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilderGetQueryParameters(
		expand = ["target"],
)

request_configuration = AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilder.AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignments.additional_access_with_access_package_id_with_incompatible_access_package_id("{accessPackageId}","{incompatibleAccessPackageId}").get(request_configuration = request_configuration)


```