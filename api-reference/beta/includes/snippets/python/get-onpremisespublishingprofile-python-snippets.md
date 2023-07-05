---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = OnPremisesPublishingProfileRequestBuilder.OnPremisesPublishingProfileRequestBuilderGetQueryParameters(
		expand = ["publishedResources","agents","agentGroups"],
)

request_configuration = OnPremisesPublishingProfileRequestBuilder.OnPremisesPublishingProfileRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.on_premise_publishing_profiles.by_on_premise_publishing_profile_id('onPremisesPublishingProfile-id').get(request_configuration = request_configuration)


```