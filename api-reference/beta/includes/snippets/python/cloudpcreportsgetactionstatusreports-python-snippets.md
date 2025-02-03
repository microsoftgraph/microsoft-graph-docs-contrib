---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.reports.get_action_status_reports.get_action_status_reports_post_request_body import GetActionStatusReportsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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