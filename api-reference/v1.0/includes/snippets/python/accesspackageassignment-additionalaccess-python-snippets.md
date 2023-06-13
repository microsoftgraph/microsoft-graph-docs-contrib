---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AccessPackageAssignmentRequestBuilder.AccessPackageAssignmentRequestBuilderGetQueryParameters(
		expand = ["target"],
)

request_configuration = AccessPackageAssignmentRequestBuilder.AccessPackageAssignmentRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.entitlement_management.assignments.by_assignment_id('accessPackageAssignment-id').get(request_configuration = request_configuration)


```