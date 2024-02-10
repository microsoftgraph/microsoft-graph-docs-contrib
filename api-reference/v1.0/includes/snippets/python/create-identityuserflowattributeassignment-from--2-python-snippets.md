---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.identity_user_flow_attribute_assignment import IdentityUserFlowAttributeAssignment
from msgraph.generated.models.user_attribute_values_item import UserAttributeValuesItem
from msgraph.generated.models.identity_user_flow_attribute import IdentityUserFlowAttribute

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