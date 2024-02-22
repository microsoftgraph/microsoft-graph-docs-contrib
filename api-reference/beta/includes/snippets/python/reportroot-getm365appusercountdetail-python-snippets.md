---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.reports.getM365AppUserDetail(period='{period}').get_m365_app_user_detail_with_period_request_builder import GetM365AppUserDetailWithPeriodRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = GetM365AppUserDetailWithPeriodRequestBuilder.GetM365AppUserDetailWithPeriodRequestBuilderGetQueryParameters(
		format = "application/json",
)

request_configuration = GetM365AppUserDetailWithPeriodRequestBuilder.GetM365AppUserDetailWithPeriodRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

await graph_client.reports.get_m365_app_user_detail_with_period("{period}").get(request_configuration = request_configuration)


```