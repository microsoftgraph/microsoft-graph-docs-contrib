---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.get_compliance_policy_non_compliance_report_post_request_body import GetCompliancePolicyNonComplianceReportPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetCompliancePolicyNonComplianceReportPostRequestBody(
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

await graph_client.device_management.reports.get_compliance_policy_non_compliance_report.post(request_body)


```