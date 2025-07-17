---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.communications.get_presences_by_user_id.get_presences_by_user_id_post_request_body import GetPresencesByUserIdPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetPresencesByUserIdPostRequestBody(
	ids = [
		"fa8bf3dc-eca7-46b7-bad1-db199b62afc3",
		"66825e03-7ef5-42da-9069-724602c31f6b",
	],
)

result = await graph_client.communications.get_presences_by_user_id.post(request_body)


```