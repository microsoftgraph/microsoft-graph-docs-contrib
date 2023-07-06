---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AppLogCollectionRequest()
request_body.@odata_type = '#microsoft.graph.appLogCollectionRequest'

request_body.status(AppLogUploadState.Completed('apploguploadstate.completed'))

request_body.error_message = 'Error Message value'

request_body.CustomLogFolders(['Custom Log Folders value', ])

request_body.completedDateTime = DateTime('2016-12-31T23:58:52.3534526-08:00')




result = await client.device_management.mobile_app_troubleshooting_events.by_mobile_app_troubleshooting_event_id('mobileAppTroubleshootingEvent-id').app_log_collection_requests.by_app_log_collection_request_id('appLogCollectionRequest-id').patch(request_body = request_body)


```