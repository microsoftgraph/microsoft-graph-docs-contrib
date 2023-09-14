---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ItemPhone(
	type = PhoneType.Other,
)

result = await graph_client.users.by_user_id('user-id').profile.phones.by_phone_id('itemPhone-id').patch(body = request_body)


```