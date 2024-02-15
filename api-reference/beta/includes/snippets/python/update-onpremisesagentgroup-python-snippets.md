---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.on_premises_agent_group import OnPremisesAgentGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnPremisesAgentGroup(
	display_name = "Group New Name",
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').agent_groups.by_on_premises_agent_group_id('onPremisesAgentGroup-id').patch(request_body)


```