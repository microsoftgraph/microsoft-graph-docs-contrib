---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.sites.item.pages.pages_request_builder import PagesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.news_link_page import NewsLinkPage
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = NewsLinkPage(
	odata_type = "#microsoft.graph.newsLinkPage",
	news_web_url = "https://someexternalnewssite.com/2024/11/11/contoso-unveils-first-self-driving-car",
	title = "Contoso Unveils First Self-Driving Car",
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("prefer", "include-unknown-enum-members")


result = await graph_client.sites.by_site_id('site-id').pages.post(request_body, request_configuration = request_configuration)


```