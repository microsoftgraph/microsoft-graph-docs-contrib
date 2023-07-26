---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = SitePageRequestBuilder.SitePageRequestBuilderGetQueryParameters(
		select = ["id","title"],
		expand = ["webparts"],
)

request_configuration = SitePageRequestBuilder.SitePageRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.sites.by_site_id('site-id').pages.by_page_id('sitePage-id').get(request_configuration = request_configuration)


```