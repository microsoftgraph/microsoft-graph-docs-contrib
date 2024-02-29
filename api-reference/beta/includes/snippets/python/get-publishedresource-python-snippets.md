---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.onPremisesPublishingProfiles.item.publishedResources.item.published_resource_item_request_builder import PublishedResourceItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = PublishedResourceItemRequestBuilder.PublishedResourceItemRequestBuilderGetQueryParameters(
		expand = ["agentGroups"],
)

request_configuration = PublishedResourceItemRequestBuilder.PublishedResourceItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').published_resources.by_published_resource_id('publishedResource-id').get(request_configuration = request_configuration)


```