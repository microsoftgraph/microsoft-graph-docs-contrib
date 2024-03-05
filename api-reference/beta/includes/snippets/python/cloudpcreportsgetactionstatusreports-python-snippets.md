---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.get_action_status_reports_post_request_body import GetActionStatusReportsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetActionStatusReportsPostRequestBody(
	filter = "ActionState eq 'failed'",
	select = [
		"Id",
		"CloudPcDeviceDisplayName",
		"BulkActionId",
		"BulkActionDisplayName",
		"CloudPcId",
		"InitiatedByUserPrincipalName",
		"DeviceOwnerUserPrincipalName",
		"Action",
		"ActionState",
		"RequestDateTime",
		"LastUpdatedDateTime",
		"ActionParameters",
	],
	skip = 0,
	top = 50,
)

await graph_client.device_management.virtual_endpoint.reports.get_action_status_reports.post(request_body)


```