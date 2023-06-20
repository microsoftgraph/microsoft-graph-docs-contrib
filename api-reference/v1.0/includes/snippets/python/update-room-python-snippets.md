---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Place()
request_body.@odata_type = 'microsoft.graph.room'

additional_data = [
'nickname' => 'Conf Room', 
'building' => '1', 
'label' => '100', 
'capacity' => 50,
'is_wheel_chair_accessible' => false,
];
request_body.additional_data(additional_data)





result = await client.places.by_place_id('place-id').patch(request_body = request_body)


```