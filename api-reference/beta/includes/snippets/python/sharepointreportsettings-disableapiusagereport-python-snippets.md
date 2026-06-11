---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.reportsettings.sharepoint.disable_api_usage_report.disable_api_usage_report_post_request_body import DisableApiUsageReportPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DisableApiUsageReportPostRequestBody(
	metric = "EgressReport",
)

result = await graph_client.admin.report_settings.share_point.disable_api_usage_report.post(request_body)


```