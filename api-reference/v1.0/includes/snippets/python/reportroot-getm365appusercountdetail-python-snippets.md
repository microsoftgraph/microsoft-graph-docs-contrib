---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.reports.get_m365_app_user_detail(period='{period}').get_m365_app_user_detail_with_period_request_builder import GetM365AppUserDetailWithPeriodRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetM365AppUserDetailWithPeriodRequestBuilder.GetM365AppUserDetailWithPeriodRequestBuilderGetQueryParameters(
		format = "application/json",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.reports.get_m365_app_user_detail_with_period("{period}").get(request_configuration = request_configuration)


```