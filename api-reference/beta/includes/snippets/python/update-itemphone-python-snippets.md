---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemPhone(
	type = PhoneType.Other,
)

result = await graph_client.users.by_user_id('user-id').profile.phones.by_item_phone_id('itemPhone-id').patch(request_body)


```