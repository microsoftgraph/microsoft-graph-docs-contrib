---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = OnPremisesAgentItemRequestBuilder.OnPremisesAgentItemRequestBuilderGetQueryParameters(
		expand = ["agentGroups"],
)

request_configuration = OnPremisesAgentItemRequestBuilder.OnPremisesAgentItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').agents.by_on_premises_agent_id('onPremisesAgent-id').get(request_configuration = request_configuration)


```