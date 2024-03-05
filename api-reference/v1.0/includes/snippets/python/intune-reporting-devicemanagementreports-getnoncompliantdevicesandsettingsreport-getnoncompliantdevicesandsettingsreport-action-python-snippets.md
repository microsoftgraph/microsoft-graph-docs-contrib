---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.get_noncompliant_devices_and_settings_report_post_request_body import GetNoncompliantDevicesAndSettingsReportPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetNoncompliantDevicesAndSettingsReportPostRequestBody(
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
	session_id = "Session Id value",
	filter = "Filter value",
)

await graph_client.device_management.reports.get_noncompliant_devices_and_settings_report.post(request_body)


```