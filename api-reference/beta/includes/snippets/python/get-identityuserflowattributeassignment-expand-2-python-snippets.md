---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity.b2x_user_flows.item.user_attribute_assignments.user_attribute_assignments_request_builder import UserAttributeAssignmentsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = UserAttributeAssignmentsRequestBuilder.UserAttributeAssignmentsRequestBuilderGetQueryParameters(
		expand = ["userAttribute"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.b2x_user_flows.by_b2x_identity_user_flow_id('b2xIdentityUserFlow-id').user_attribute_assignments.get(request_configuration = request_configuration)


```