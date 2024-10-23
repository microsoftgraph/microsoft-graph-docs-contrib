---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_premises_agent_group import OnPremisesAgentGroup
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnPremisesAgentGroup(
	display_name = "Group New Name",
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').agent_groups.by_on_premises_agent_group_id('onPremisesAgentGroup-id').patch(request_body)


```