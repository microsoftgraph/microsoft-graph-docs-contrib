---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.get_cached_report_post_request_body import GetCachedReportPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetCachedReportPostRequestBody(
	id = "Id value",
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
)

await graph_client.device_management.reports.get_cached_report.post(request_body)


```