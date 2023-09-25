---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ItemAddress(
	allowed_audiences = AllowedAudiences.Me,
	display_name = "Secret Hideout",
)

result = await graph_client.users.by_user_id('user-id').profile.addresses.by_addresse_id('itemAddress-id').patch(body = request_body)


```