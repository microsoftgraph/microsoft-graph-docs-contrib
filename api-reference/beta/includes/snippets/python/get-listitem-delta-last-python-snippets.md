---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		token = "1230919asd190410jlka",
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.delta.get(request_configuration = request_configuration)


```