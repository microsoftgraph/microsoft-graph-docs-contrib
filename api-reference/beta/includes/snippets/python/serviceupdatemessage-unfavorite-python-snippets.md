---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.serviceannouncement.messages.unfavorite.unfavorite_post_request_body import UnfavoritePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnfavoritePostRequestBody(
	message_ids = [
		"MC172851",
		"MC167983",
	],
)

result = await graph_client.admin.service_announcement.messages.unfavorite.post(request_body)


```