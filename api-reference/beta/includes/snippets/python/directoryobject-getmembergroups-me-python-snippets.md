---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetMemberGroupsPostRequestBody()
request_body.security_enabled_only = True




result = await client.me.get_member_groups.post(request_body = request_body)


```