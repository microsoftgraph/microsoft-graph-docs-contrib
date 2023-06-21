---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CountryNamedLocation()
request_body.@odata_type = '#microsoft.graph.countryNamedLocation'

request_body.display_name = 'Named location with unknown countries and regions'

request_body.CountriesAndRegions(['US', 'GB', ])

request_body.include_unknown_countries_and_regions = True




result = await client.identity.conditional_access.named_locations.post(request_body = request_body)


```