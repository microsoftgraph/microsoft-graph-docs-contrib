---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.admin.serviceannouncement.messages.mark_read.mark_read_post_request_body import MarkReadPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = MarkReadPostRequestBody(
	message_ids = [
		"MC172851",
		"MC167983",
	],
)

result = await graph_client.admin.service_announcement.messages.mark_read.post(request_body)


```