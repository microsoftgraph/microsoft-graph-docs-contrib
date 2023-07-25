---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ApplePushNotificationCertificate()
request_body.@odata_type = '#microsoft.graph.applePushNotificationCertificate'

request_body.apple_identifier = 'Apple Identifier value'

request_body.topic_identifier = 'Topic Identifier value'

request_body.expirationDateTime = DateTime('2016-12-31T23:57:57.2481234-08:00')

request_body.certificate_upload_status = 'Certificate Upload Status value'

request_body.certificate_upload_failure_reason = 'Certificate Upload Failure Reason value'

request_body.certificate_serial_number = 'Certificate Serial Number value'

request_body.certificate = 'Certificate value'




result = await client.device_management.apple_push_notification_certificate.patch(request_body = request_body)


```