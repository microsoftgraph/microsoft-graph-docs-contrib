---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.admin.serviceAnnouncement.healthOverviews.health_overviews_request_builder import HealthOverviewsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = HealthOverviewsRequestBuilder.HealthOverviewsRequestBuilderGetQueryParameters(
		expand = ["issues"],
)

request_configuration = HealthOverviewsRequestBuilder.HealthOverviewsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.service_announcement.health_overviews.get(request_configuration = request_configuration)


```