---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = PublishedResourcesRequestBuilder.PublishedResourcesRequestBuilderGetQueryParameters(
		expand = ["agentGroups"],
)

request_configuration = PublishedResourcesRequestBuilder.PublishedResourcesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.on_premise_publishing_profiles.by_on_premise_publishing_profile_id('onPremisesPublishingProfile-id').published_resources.get(request_configuration = request_configuration)


```