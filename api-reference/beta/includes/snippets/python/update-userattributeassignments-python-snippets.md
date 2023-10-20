---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = IdentityUserFlowAttributeAssignment(
	user_input_type = IdentityUserFlowAttributeInputType.TextBox,
)

result = await graph_client.identity.b2c_user_flows.by_b2c_user_flow_id('b2cIdentityUserFlow-id').user_attribute_assignments.by_user_attribute_assignment_id('identityUserFlowAttributeAssignment-id').patch(body = request_body)


```