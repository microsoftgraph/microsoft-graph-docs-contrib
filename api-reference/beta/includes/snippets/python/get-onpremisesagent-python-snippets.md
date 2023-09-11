---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = OnPremisesAgentRequestBuilder.OnPremisesAgentRequestBuilderGetQueryParameters(
		expand = ["agentGroups"],
)

request_configuration = OnPremisesAgentRequestBuilder.OnPremisesAgentRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.on_premise_publishing_profiles.by_on_premise_publishing_profile_id('onPremisesPublishingProfile-id').agents.by_agent_id('onPremisesAgent-id').get(request_configuration = request_configuration)


```