---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.b2xUserFlows.item.userAttributeAssignments.item.identity_user_flow_attribute_assignment_item_request_builder import IdentityUserFlowAttributeAssignmentItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = IdentityUserFlowAttributeAssignmentItemRequestBuilder.IdentityUserFlowAttributeAssignmentItemRequestBuilderGetQueryParameters(
		expand = ["userAttribute"],
)

request_configuration = IdentityUserFlowAttributeAssignmentItemRequestBuilder.IdentityUserFlowAttributeAssignmentItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.b2x_user_flows.by_b2x_identity_user_flow_id('b2xIdentityUserFlow-id').user_attribute_assignments.by_identity_user_flow_attribute_assignment_id('identityUserFlowAttributeAssignment-id').get(request_configuration = request_configuration)


```