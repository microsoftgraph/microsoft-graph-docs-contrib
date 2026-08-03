---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.reports.get_microsoft365_copilot_usage_user_detail(period='{period}',version='{version}').get_microsoft365_copilot_usage_user_detail_with_period_with_version_request_builder import GetMicrosoft365CopilotUsageUserDetailWithPeriodWithVersionRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetMicrosoft365CopilotUsageUserDetailWithPeriodWithVersionRequestBuilder.GetMicrosoft365CopilotUsageUserDetailWithPeriodWithVersionRequestBuilderGetQueryParameters(
		format = "text/csv",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.reports.get_microsoft365_copilot_usage_user_detail_with_period_with_version("{period}","{version}").get(request_configuration = request_configuration)


```