---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.network_access.connectivity.microsoft.graph.networkaccess.get_web_category_by_url(url='{url}').get_web_category_by_url_with_url_request_builder import GetWebCategoryByUrlWithUrlRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetWebCategoryByUrlWithUrlRequestBuilder.GetWebCategoryByUrlWithUrlRequestBuilderGetQueryParameters(
		@url = "msn.com/en-us/sports",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.network_access.connectivity.microsoft_graph_networkaccess_get_web_category_by_url_with_url("{url}").get(request_configuration = request_configuration)


```