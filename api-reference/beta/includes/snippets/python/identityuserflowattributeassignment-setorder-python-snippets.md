---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.b2cuserflows.item.userattributeassignments.set_order.set_order_post_request_body import SetOrderPostRequestBody
from msgraph.generated.models.assignment_order import AssignmentOrder

graph_client = GraphServiceClient(credentials, scopes)

request_body = SetOrderPostRequestBody(
	new_assignment_order = AssignmentOrder(
		order = [
			"City",
			"extension_GUID_ShoeSize",
		],
	),
)

await graph_client.identity.b2c_user_flows.by_b2c_identity_user_flow_id('b2cIdentityUserFlow-id').user_attribute_assignments.set_order.post(request_body)


```