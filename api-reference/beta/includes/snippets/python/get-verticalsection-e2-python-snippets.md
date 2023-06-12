---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = VerticalSectionRequestBuilder.VerticalSectionRequestBuilderGetQueryParameters(
		select = ["emphasis","expand=webparts"],
)

request_configuration = VerticalSectionRequestBuilder.VerticalSectionRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.sites.by_site_id('site-id').pages.by_page_id('sitePage-id').canva_layout.vertical_section.get(request_configuration = request_configuration)


```