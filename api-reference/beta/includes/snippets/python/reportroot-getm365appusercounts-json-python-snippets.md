---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.reports.get_m365_app_user_counts(period='{period}').get_m365_app_user_counts_with_period_request_builder import GetM365AppUserCountsWithPeriodRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = GetM365AppUserCountsWithPeriodRequestBuilder.GetM365AppUserCountsWithPeriodRequestBuilderGetQueryParameters(
		format = "application/json",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.reports.get_m365_app_user_counts_with_period("{period}").get(request_configuration = request_configuration)


```