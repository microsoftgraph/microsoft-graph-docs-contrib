---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.forwarding_profile import ForwardingProfile
from msgraph_beta.generated.models.networkaccess.association import Association
from msgraph_beta.generated.models.networkaccess.associated_branch import AssociatedBranch
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ForwardingProfile(
	associations = [
		AssociatedBranch(
			odata_type = "#microsoft.graph.networkaccess.associatedBranch",
			branch_id = "88e5a488-92c3-45d6-ba56-e5cfa63677e8",
		),
	],
)

result = await graph_client.network_access.forwarding_profiles.by_forwarding_profile_id('forwardingProfile-id').patch(request_body)


```