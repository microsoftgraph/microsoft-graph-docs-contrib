---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.admin.service_announcement.messages.by_service_update_message_id('serviceUpdateMessage-id').attachments.get()


```