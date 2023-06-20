---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WorkPosition()
request_body.is_current = True




result = await client.me.profile.positions.by_position_id('workPosition-id').patch(request_body = request_body)


```