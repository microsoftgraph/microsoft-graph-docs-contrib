---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = IdentityUserFlowAttributeAssignmentRequestBuilder.IdentityUserFlowAttributeAssignmentRequestBuilderGetQueryParameters(
		expand = ["userAttribute"],
)

request_configuration = IdentityUserFlowAttributeAssignmentRequestBuilder.IdentityUserFlowAttributeAssignmentRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity.b2c_user_flows.by_b2c_user_flow_id('b2cIdentityUserFlow-id').user_attribute_assignments.by_user_attribute_assignment_id('identityUserFlowAttributeAssignment-id').get(request_configuration = request_configuration)


```