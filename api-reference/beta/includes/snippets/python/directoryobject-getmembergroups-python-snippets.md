---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetMemberGroupsPostRequestBody()
request_body.security_enabled_only = False




result = await client.directory_objects.by_directory_object_id('directoryObject-id').get_member_groups.post(request_body = request_body)


```