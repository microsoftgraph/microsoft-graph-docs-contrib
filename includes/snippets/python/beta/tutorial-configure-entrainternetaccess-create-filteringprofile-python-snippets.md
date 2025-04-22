---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.filtering_profile import FilteringProfile
from msgraph_beta.generated.models.status import Status
from msgraph_beta.generated.models.networkaccess.policy_link import PolicyLink
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FilteringProfile(
	name = "Security Profile for UserA",
	state = Status.Enabled,
	priority = 100,
	policies = [
	],
)

result = await graph_client.network_access.filtering_profiles.post(request_body)


```