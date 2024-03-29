---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.device_management.notification_message_templates.by_notification_message_template_id('notificationMessageTemplate-id').send_test_message.post()


```