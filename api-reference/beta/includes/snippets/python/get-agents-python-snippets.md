---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.on_premises_publishing_profiles.item.agents.agents_request_builder import AgentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AgentsRequestBuilder.AgentsRequestBuilderGetQueryParameters(
		expand = ["agentGroups"],
)

request_configuration = AgentsRequestBuilder.AgentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').agents.get(request_configuration = request_configuration)


```