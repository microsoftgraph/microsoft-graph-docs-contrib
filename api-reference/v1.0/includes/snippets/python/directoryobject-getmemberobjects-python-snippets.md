---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetMemberObjectsPostRequestBody()
request_body.security_enabled_only = True




result = await client.directory_objects.by_directory_object_id('directoryObject-id').get_member_objects.post(request_body = request_body)


```