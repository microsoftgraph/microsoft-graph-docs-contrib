---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.reports.get_historical_report.get_historical_report_post_request_body import GetHistoricalReportPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetHistoricalReportPostRequestBody(
	name = "Name value",
	select = [
		"Select value",
	],
	search = "Search value",
	group_by = [
		"Group By value",
	],
	order_by = [
		"Order By value",
	],
	skip = 4,
	top = 3,
	filter = "Filter value",
)

await graph_client.device_management.reports.get_historical_report.post(request_body)


```