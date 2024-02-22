---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unfavorite_post_request_body import UnfavoritePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnfavoritePostRequestBody(
	message_ids = [
		"MC172851",
		"MC167983",
	],
)

result = await graph_client.admin.service_announcement.messages.unfavorite.post(request_body)


```