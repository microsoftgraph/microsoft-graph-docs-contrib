---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CheckMemberGroupsPostRequestBody()
request_body.GroupIds(['fee2c45b-915a-4a64-b130-f4eb9e75525e', '4fe90ae7-065a-478b-9400-e0a0e1cbd540', ])




result = await client.me.check_member_groups.post(request_body = request_body)


```