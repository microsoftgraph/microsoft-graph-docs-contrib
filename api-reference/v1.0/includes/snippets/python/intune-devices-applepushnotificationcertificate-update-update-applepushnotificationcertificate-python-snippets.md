---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.apple_push_notification_certificate import ApplePushNotificationCertificate

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApplePushNotificationCertificate(
	odata_type = "#microsoft.graph.applePushNotificationCertificate",
	apple_identifier = "Apple Identifier value",
	topic_identifier = "Topic Identifier value",
	expiration_date_time = "2016-12-31T23:57:57.2481234-08:00",
	certificate_upload_status = "Certificate Upload Status value",
	certificate_upload_failure_reason = "Certificate Upload Failure Reason value",
	certificate_serial_number = "Certificate Serial Number value",
	certificate = "Certificate value",
)

result = await graph_client.device_management.apple_push_notification_certificate.patch(request_body)


```