---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.get_presences_by_user_id.get_presences_by_user_id_post_request_body import GetPresencesByUserIdPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetPresencesByUserIdPostRequestBody(
	ids = [
		"fa8bf3dc-eca7-46b7-bad1-db199b62afc3",
		"66825e03-7ef5-42da-9069-724602c31f6b",
	],
)

result = await graph_client.communications.get_presences_by_user_id.post(request_body)


```