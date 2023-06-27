---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilder.AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilderGetQueryParameters(
		expand = ["target"],
)

request_configuration = AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilder.AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.entitlement_management.assignments.additional_access(acces_package_id='{acces_package_id}',incompatible_acces_package_id='{incompatible_acces_package_id}'.get(request_configuration = request_configuration)


```