---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = LocalizedNotificationMessage()
request_body.@odata_type = '#microsoft.graph.localizedNotificationMessage'

request_body.locale = 'Locale value'

request_body.subject = 'Subject value'

request_body.message_template = 'Message Template value'

request_body.is_default = True




result = await client.device_management.notification_message_templates.by_notification_message_template_id('notificationMessageTemplate-id').localized_notification_messages.by_localized_notification_message_id('localizedNotificationMessage-id').patch(request_body = request_body)


```