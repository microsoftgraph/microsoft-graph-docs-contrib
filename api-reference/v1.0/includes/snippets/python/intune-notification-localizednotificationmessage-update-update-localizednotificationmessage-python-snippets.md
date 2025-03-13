---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.localized_notification_message import LocalizedNotificationMessage
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = LocalizedNotificationMessage(
	odata_type = "#microsoft.graph.localizedNotificationMessage",
	locale = "Locale value",
	subject = "Subject value",
	message_template = "Message Template value",
	is_default = True,
)

result = await graph_client.device_management.notification_message_templates.by_notification_message_template_id('notificationMessageTemplate-id').localized_notification_messages.by_localized_notification_message_id('localizedNotificationMessage-id').patch(request_body)


```