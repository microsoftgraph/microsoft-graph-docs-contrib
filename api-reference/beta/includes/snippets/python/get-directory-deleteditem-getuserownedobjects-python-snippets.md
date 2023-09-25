---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = GetUserOwnedObjectsPostRequestBody(
	user_id = "55ac777c-109e-4022-b58c-470c8fcb6892",
	type = "Group",
)

result = await graph_client.directory.deleted_items.get_user_owned_objects.post(body = request_body)


```