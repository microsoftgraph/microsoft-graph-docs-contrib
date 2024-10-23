---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.identity_user_flow import IdentityUserFlow
from msgraph_beta.generated.models.user_flow_type import UserFlowType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IdentityUserFlow(
	id = "Pol1",
	user_flow_type = UserFlowType.SignUpOrSignIn,
	user_flow_type_version = 1,
)

result = await graph_client.identity.user_flows.post(request_body)


```