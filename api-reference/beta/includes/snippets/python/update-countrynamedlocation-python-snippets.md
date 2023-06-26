---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = NamedLocation()
request_body.@odata_type = '#microsoft.graph.countryNamedLocation'

request_body.display_name = 'Updated named location without unknown countries and regions'

additional_data = [
'countries_and_regions' => ['CA', 'IN', ],
'include_unknown_countries_and_regions' => false,
];
request_body.additional_data(additional_data)





result = await client.identity.conditional_access.named_locations.by_named_location_id('namedLocation-id').patch(request_body = request_body)


```