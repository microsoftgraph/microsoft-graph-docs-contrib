---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Alert()
request_body.assigned_to = 'String'

request_body.closedDateTime = DateTime('String (timestamp)')

request_body.Comments(['String', ])

request_body.feedback(AlertFeedback.@odata.type: microsoft.graph.alertFeedback('alertfeedback.@odata.type: microsoft.graph.alertfeedback'))

request_body.status(AlertStatus.@odata.type: microsoft.graph.alertStatus('alertstatus.@odata.type: microsoft.graph.alertstatus'))

request_body.Tags(['String', ])

vendor_information = SecurityVendorInformation()
vendor_information.provider = 'String'

vendor_information.vendor = 'String'


request_body.vendor_information = vendor_information



result = await client.security.alerts.by_alert_id('alert-id').patch(request_body = request_body)


```