---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_premises_agent_group import OnPremisesAgentGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnPremisesAgentGroup(
	display_name = "New Group",
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').agent_groups.post(request_body)


```