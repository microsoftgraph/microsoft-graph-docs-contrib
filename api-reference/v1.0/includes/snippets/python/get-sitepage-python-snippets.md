---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.sites.item.pages.item.graph.sitePage.site_page_request_builder import SitePageRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = SitePageRequestBuilder.SitePageRequestBuilderGetQueryParameters(
		select = ["id","name"],
)

request_configuration = SitePageRequestBuilder.SitePageRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.sites.by_site_id('site-id').pages.by_base_site_page_id('baseSitePage-id').graph_site_page.get(request_configuration = request_configuration)


```