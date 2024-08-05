---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.reports.get_m365_app_platform_user_counts(period='{period}').get_m365_app_platform_user_counts_with_period_request_builder import GetM365AppPlatformUserCountsWithPeriodRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = GetM365AppPlatformUserCountsWithPeriodRequestBuilder.GetM365AppPlatformUserCountsWithPeriodRequestBuilderGetQueryParameters(
		format = "text/csv",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.reports.get_m365_app_platform_user_counts_with_period("{period}").get(request_configuration = request_configuration)


```