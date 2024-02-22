---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.identity_user_flow_attribute_assignment import IdentityUserFlowAttributeAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityUserFlowAttributeAssignment(
	user_input_type = IdentityUserFlowAttributeInputType.TextBox,
)

result = await graph_client.identity.b2x_user_flows.by_b2x_identity_user_flow_id('b2xIdentityUserFlow-id').user_attribute_assignments.by_identity_user_flow_attribute_assignment_id('identityUserFlowAttributeAssignment-id').patch(request_body)


```