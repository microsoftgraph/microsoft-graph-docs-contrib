---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.reportsettings.sharepoint.enable_api_usage_report.enable_api_usage_report_post_request_body import EnableApiUsageReportPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EnableApiUsageReportPostRequestBody(
	metric = "EgressReport",
)

result = await graph_client.admin.report_settings.share_point.enable_api_usage_report.post(request_body)


```