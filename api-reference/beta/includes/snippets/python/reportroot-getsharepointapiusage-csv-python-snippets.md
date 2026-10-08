---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.reports.get_share_point_api_usage(period='{period}',app_id='{app_id}',report_type='@report_type').get_share_point_api_usage_with_period_with_app_idreport_type='@report_type'_request_builder import GetSharePointApiUsageWithPeriodWithAppIdreportType='@reportType'RequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetSharePointApiUsageWithPeriodWithAppIdreportType='@reportType'RequestBuilder.GetSharePointApiUsageWithPeriodWithAppIdreportType='@reportType'RequestBuilderGetQueryParameters(
		format = "text/csv",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.reports.get_share_point_api_usage_with_period_with_app_id("{appId}","{period}").get(request_configuration = request_configuration)


```