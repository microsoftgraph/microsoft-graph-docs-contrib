---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.favorite_post_request_body import FavoritePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = FavoritePostRequestBody(
	message_ids = [
		"MC172851",
		"MC167983",
	],
)

result = await graph_client.admin.service_announcement.messages.favorite.post(request_body)


```