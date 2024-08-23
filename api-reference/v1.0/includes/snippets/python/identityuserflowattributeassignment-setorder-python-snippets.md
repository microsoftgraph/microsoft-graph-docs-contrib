---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.b2xuserflows.item.userattributeassignments.set_order.set_order_post_request_body import SetOrderPostRequestBody
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

await graph_client.identity.b2x_user_flows.by_b2x_identity_user_flow_id('b2xIdentityUserFlow-id').user_attribute_assignments.set_order.post(request_body)


```