---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = ListRequestBuilder.ListRequestBuilderGetQueryParameters(
		select = ["id","name","lastModifiedDateTime"],
		expand = ["columns(select=name,description)","items",")"],
)

request_configuration = ListRequestBuilder.ListRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.sites.by_site_id('site-id').lists.by_list_id('list-id').get(request_configuration = request_configuration)


```