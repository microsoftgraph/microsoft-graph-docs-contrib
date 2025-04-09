---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.identity_user_flow_attribute_assignment import IdentityUserFlowAttributeAssignment
from msgraph_beta.generated.models.identity_user_flow_attribute_input_type import IdentityUserFlowAttributeInputType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IdentityUserFlowAttributeAssignment(
	user_input_type = IdentityUserFlowAttributeInputType.TextBox,
)

result = await graph_client.identity.b2c_user_flows.by_b2c_identity_user_flow_id('b2cIdentityUserFlow-id').user_attribute_assignments.by_identity_user_flow_attribute_assignment_id('identityUserFlowAttributeAssignment-id').patch(request_body)


```