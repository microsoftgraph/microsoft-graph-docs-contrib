---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = PublishedResourceItemRequestBuilder.PublishedResourceItemRequestBuilderGetQueryParameters(
		expand = ["agentGroups"],
)

request_configuration = PublishedResourceItemRequestBuilder.PublishedResourceItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').published_resources.by_published_resource_id('publishedResource-id').get(request_configuration = request_configuration)


```