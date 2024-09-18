---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.forwarding_policy_link import ForwardingPolicyLink
from msgraph_beta.generated.models.status import Status

graph_client = GraphServiceClient(credentials, scopes)

request_body = ForwardingPolicyLink(
	odata_type = "#microsoft.graph.networkaccess.forwardingPolicyLink",
	state = Status.Enabled,
)

result = await graph_client.network_access.forwarding_profiles.by_forwarding_profile_id('forwardingProfile-id').policies.by_policy_link_id('policyLink-id').patch(request_body)


```