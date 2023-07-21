---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CountryNamedLocation()
request_body.@odata_type = '#microsoft.graph.countryNamedLocation'

request_body.display_name = 'Updated named location without unknown countries and regions'

request_body.CountriesAndRegions(['CA', 'IN', ])

request_body.include_unknown_countries_and_regions = False




result = await client.identity.conditional_access.named_locations.by_named_location_id('namedLocation-id').patch(request_body = request_body)


```