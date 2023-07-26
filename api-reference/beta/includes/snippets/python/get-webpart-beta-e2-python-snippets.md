---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = WebPartRequestBuilder.WebPartRequestBuilderGetQueryParameters(
		select = ["id"],
)

request_configuration = WebPartRequestBuilder.WebPartRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.sites.by_site_id('site-id').pages.by_page_id('sitePage-id').web_parts.by_web_part_id('webPart-id').get(request_configuration = request_configuration)


```