---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = PublishedResourceRequestBuilder.PublishedResourceRequestBuilderGetQueryParameters(
		expand = ["agentGroups"],
)

request_configuration = PublishedResourceRequestBuilder.PublishedResourceRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.on_premise_publishing_profiles.by_on_premise_publishing_profile_id('onPremisesPublishingProfile-id').published_resources.by_published_resource_id('publishedResource-id').get(request_configuration = request_configuration)


```