---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpdateAlertsPostRequestBody()
value_alert1 = Alert()
value_alert1.assigned_to = 'String'

value_alert1.closedDateTime = DateTime('String (timestamp)')

value_alert1.Comments(['String', ])

value_alert1feedback = AlertFeedback()
additional_data = [
'@odata_type' => 'microsoft.graph.alertFeedback', 
];
value_alert1feedback.additional_data(additional_data)



value_alert1.feedback = value_alert1feedback
value_alert1.id = 'String (identifier)'

value_alert1status = AlertStatus()
additional_data = [
'@odata_type' => 'microsoft.graph.alertStatus', 
];
value_alert1status.additional_data(additional_data)



value_alert1.status = value_alert1status
value_alert1.Tags(['String', ])

value_alert1vendor_information = SecurityVendorInformation()
value_alert1vendor_information.provider = 'String'

value_alert1vendor_information.vendor = 'String'


value_alert1.vendor_information = value_alert1vendor_information

valueArray []= valueAlert1;
request_body.value(valueArray)





result = await client.security.alerts.update_alerts.post(request_body = request_body)


```