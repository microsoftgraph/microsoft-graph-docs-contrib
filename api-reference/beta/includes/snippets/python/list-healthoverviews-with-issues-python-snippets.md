---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.service_announcement.health_overviews.health_overviews_request_builder import HealthOverviewsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = HealthOverviewsRequestBuilder.HealthOverviewsRequestBuilderGetQueryParameters(
		expand = ["issues"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.service_announcement.health_overviews.get(request_configuration = request_configuration)


```