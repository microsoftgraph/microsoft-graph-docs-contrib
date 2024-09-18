---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.me.events.by_event_id('event-id').attachments.by_attachment_id('attachment-id').delete()


```