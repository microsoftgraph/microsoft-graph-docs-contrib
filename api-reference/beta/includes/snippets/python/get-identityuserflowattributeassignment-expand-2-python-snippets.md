---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity.b2x_user_flows.item.user_attribute_assignments.user_attribute_assignments_request_builder import UserAttributeAssignmentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = UserAttributeAssignmentsRequestBuilder.UserAttributeAssignmentsRequestBuilderGetQueryParameters(
		expand = ["userAttribute"],
)

request_configuration = UserAttributeAssignmentsRequestBuilder.UserAttributeAssignmentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.b2x_user_flows.by_b2x_identity_user_flow_id('b2xIdentityUserFlow-id').user_attribute_assignments.get(request_configuration = request_configuration)


```