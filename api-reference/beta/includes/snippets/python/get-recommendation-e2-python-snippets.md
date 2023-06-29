---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = RecommendationsRequestBuilder.RecommendationsRequestBuilderGetQueryParameters(
		filter = "recommendationType eq 'turnOffPerUserMFA'",
)

request_configuration = RecommendationsRequestBuilder.RecommendationsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.directory.recommendations.get(request_configuration = request_configuration)


```