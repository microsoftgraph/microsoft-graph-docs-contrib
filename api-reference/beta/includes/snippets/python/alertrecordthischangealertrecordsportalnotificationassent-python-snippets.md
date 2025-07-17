---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.monitoring.alertrecords.microsoft_graph_device_management_change_alert_records_portal_notification_as_sent.change_alert_records_portal_notification_as_sent_post_request_body import ChangeAlertRecordsPortalNotificationAsSentPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ChangeAlertRecordsPortalNotificationAsSentPostRequestBody(
	alert_record_ids = [
		"1d2b92e3-539a-481f-b38a-c2c050b422ad",
		"4bf624c4-a801-4631-989c-7f1a3a0d1d83",
	],
)

await graph_client.device_management.monitoring.alert_records.microsoft_graph_device_management_change_alert_records_portal_notification_as_sent.post(request_body)


```