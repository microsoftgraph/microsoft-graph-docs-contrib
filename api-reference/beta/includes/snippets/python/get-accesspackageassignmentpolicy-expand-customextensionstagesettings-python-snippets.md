---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AccessPackageAssignmentPolicyRequestBuilder.AccessPackageAssignmentPolicyRequestBuilderGetQueryParameters(
		expand = ["customExtensionStageSettings($expand=customExtension)"],
)

request_configuration = AccessPackageAssignmentPolicyRequestBuilder.AccessPackageAssignmentPolicyRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.entitlement_management.acce_package_assignment_policies.by_acces_package_assignment_policie_id('accessPackageAssignmentPolicy-id').get(request_configuration = request_configuration)


```