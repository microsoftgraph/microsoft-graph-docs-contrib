---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.on_premises_publishing_profiles.item.on_premises_publishing_profile_item_request_builder import OnPremisesPublishingProfileItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = OnPremisesPublishingProfileItemRequestBuilder.OnPremisesPublishingProfileItemRequestBuilderGetQueryParameters(
		expand = ["publishedResources","agents","agentGroups"],
)

request_configuration = OnPremisesPublishingProfileItemRequestBuilder.OnPremisesPublishingProfileItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').get(request_configuration = request_configuration)


```