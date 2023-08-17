---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RemoveGroupPostRequestBody()
request_body.group_id = 'ffffffff-ffff-ffff-ffff-ffffffffffff'




result = await client.group_lifecycle_policies.by_group_lifecycle_policie_id('groupLifecyclePolicy-id').remove_group.post(request_body = request_body)


```