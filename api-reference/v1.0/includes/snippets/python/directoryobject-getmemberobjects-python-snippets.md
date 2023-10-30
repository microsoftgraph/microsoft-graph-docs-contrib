---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetMemberObjectsPostRequestBody(
	security_enabled_only = True,
)

result = await graph_client.directory_objects.by_directory_object_id('directoryObject-id').get_member_objects.post(request_body)


```