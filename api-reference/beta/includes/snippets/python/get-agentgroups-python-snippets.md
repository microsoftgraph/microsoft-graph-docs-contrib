---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.onPremisesPublishingProfiles.item.agentGroups.agent_groups_request_builder import AgentGroupsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AgentGroupsRequestBuilder.AgentGroupsRequestBuilderGetQueryParameters(
		expand = ["agents","publishedResources"],
)

request_configuration = AgentGroupsRequestBuilder.AgentGroupsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').agent_groups.get(request_configuration = request_configuration)


```