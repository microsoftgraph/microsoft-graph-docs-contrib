---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.app_log_collection_request import AppLogCollectionRequest

graph_client = GraphServiceClient(credentials, scopes)

request_body = AppLogCollectionRequest(
	odata_type = "#microsoft.graph.appLogCollectionRequest",
	status = AppLogUploadState.Completed,
	error_message = "Error Message value",
	custom_log_folders = [
		"Custom Log Folders value",
	],
	completed_date_time = "2016-12-31T23:58:52.3534526-08:00",
)

result = await graph_client.device_management.mobile_app_troubleshooting_events.by_mobile_app_troubleshooting_event_id('mobileAppTroubleshootingEvent-id').app_log_collection_requests.by_app_log_collection_request_id('appLogCollectionRequest-id').patch(request_body)


```