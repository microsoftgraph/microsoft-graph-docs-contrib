---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = SecureScoresRequestBuilder.SecureScoresRequestBuilderGetQueryParameters(
		top = 1,
)

request_configuration = SecureScoresRequestBuilder.SecureScoresRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.security.secure_scores.get(request_configuration = request_configuration)


```