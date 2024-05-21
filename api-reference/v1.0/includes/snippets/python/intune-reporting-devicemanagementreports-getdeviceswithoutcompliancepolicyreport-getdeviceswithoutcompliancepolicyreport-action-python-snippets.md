---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.reports.get_devices_without_compliance_policy_report.get_devices_without_compliance_policy_report_post_request_body import GetDevicesWithoutCompliancePolicyReportPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetDevicesWithoutCompliancePolicyReportPostRequestBody(
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

await graph_client.device_management.reports.get_devices_without_compliance_policy_report.post(request_body)


```