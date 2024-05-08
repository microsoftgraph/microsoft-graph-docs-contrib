---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.admin.serviceannouncement.messages.mark_unread.mark_unread_post_request_body import MarkUnreadPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = MarkUnreadPostRequestBody(
	message_ids = [
		"MC172851",
		"MC167983",
	],
)

result = await graph_client.admin.service_announcement.messages.mark_unread.post(request_body)


```