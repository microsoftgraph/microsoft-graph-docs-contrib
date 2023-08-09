---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CheckMemberGroupsPostRequestBody()
request_body.GroupIds(['fee2c45b-915a-4a64b130f4eb9e75525e', '4fe90ae065a-478b9400e0a0e1cbd540', ])




result = await client.me.check_member_groups.post(request_body = request_body)


```