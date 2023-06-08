---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CheckMemberGroupsPostRequestBody()
request_body.GroupIds(['f448435d-3ca7-4073-8152-a1fd73c0fd09', 'bd7c6263-4dd5-4ae8-8c96-556e1c0bece6', '93670da6-d731-4366-94b5-abed40b6016b', 'f5484ab1-4d4d-41ec-a9b8-754b3957bfc7', 'c9103f26-f3cf-4004-a611-2a14e81b8f79', ])




result = await client.directory_objects.by_directory_object_id('directoryObject-id').check_member_groups.post(request_body = request_body)


```