---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.reports.get_microsoft365_copilot_usage_user_detail(period='{period}',version='@version').get_microsoft365_copilot_usage_user_detail_with_periodversion='@version'_request_builder import GetMicrosoft365CopilotUsageUserDetailWithPeriodversion='@version'RequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetMicrosoft365CopilotUsageUserDetailWithPeriodversion='@version'RequestBuilder.GetMicrosoft365CopilotUsageUserDetailWithPeriodversion='@version'RequestBuilderGetQueryParameters(
		format = "application/json",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.reports.get_microsoft365_copilot_usage_user_detail_with_period("{period}").get(request_configuration = request_configuration)


```