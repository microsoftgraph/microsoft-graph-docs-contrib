---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = DefinitionsRequestBuilder.DefinitionsRequestBuilderGetQueryParameters(
		top = 100,
		skip = 0,
)

request_configuration = DefinitionsRequestBuilder.DefinitionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.acce_reviews.definitions.get(request_configuration = request_configuration)


```