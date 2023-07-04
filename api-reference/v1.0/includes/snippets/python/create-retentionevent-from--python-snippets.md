---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RetentionEvent()
request_body.@odata_type = '#microsoft.graph.security.retentionEvent'

request_body.display_name = 'String'

request_body.description = 'String'

request_body.eventTriggerDateTime = DateTime('String (timestamp)')

additional_data = [
'event_query' => event_query1 = ()
		event_query1.@odata_type = 'microsoft.graph.security.eventQuery'


eventQueryArray []= eventQuery1;
request_body.eventquery(eventQueryArray)


'retention_event_type@odata_bind' => 'https://graph.microsoft.com/v1.0/security/triggerTypes/retentionEventType/9eecef97-fb3c-4c68-825b-4dd74530863a', 
];
request_body.additional_data(additional_data)





result = await client.security.triggers.retention_events.post(request_body = request_body)


```