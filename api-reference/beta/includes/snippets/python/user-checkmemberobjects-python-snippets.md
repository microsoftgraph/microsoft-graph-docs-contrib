---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CheckMemberObjectsPostRequestBody()
request_body.Ids(['80a963dd-84af-4eb8-b2a6-781e444d4fb0', '62e90394-69f5-4237-9190-012177145e10', '86a64f51-3a64-4cc6-a8c8-6b8f000c0f52', 'ac38546e-ddf3-437a-ac5c-27a94cd7a0f1', ])




result = await client.me.check_member_objects.post(request_body = request_body)


```