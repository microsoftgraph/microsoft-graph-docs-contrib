---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityUserFlowAttributeAssignment(
	is_optional = False,
	requires_verification = False,
	user_input_type = IdentityUserFlowAttributeInputType.TextBox,
	display_name = "Shoe size",
	user_attribute_values = [
	],
	user_attribute = IdentityUserFlowAttribute(
		id = "extension_guid_shoeSize",
	),
)

result = await graph_client.identity.b2x_user_flows.by_b2x_identity_user_flow_id('b2xIdentityUserFlow-id').user_attribute_assignments.post(request_body)


```