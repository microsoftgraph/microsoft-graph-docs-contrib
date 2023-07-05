---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MobileAppTroubleshootingEvent()
request_body.@odata_type = '#microsoft.graph.mobileAppTroubleshootingEvent'




result = await client.device_management.mobile_app_troubleshooting_events.by_mobile_app_troubleshooting_event_id('mobileAppTroubleshootingEvent-id').patch(request_body = request_body)


```