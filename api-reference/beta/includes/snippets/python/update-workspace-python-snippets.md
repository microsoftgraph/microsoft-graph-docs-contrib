---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Workspace()
request_body.@odata_type = 'microsoft.graph.workspace'

request_body.nickname = 'Conf Room'

request_body.building = '1'

request_body.label = '100'

request_body.Capacity = 50

request_body.is_wheel_chair_accessible = False




result = await client.places.by_place_id('place-id').patch(request_body = request_body)


```