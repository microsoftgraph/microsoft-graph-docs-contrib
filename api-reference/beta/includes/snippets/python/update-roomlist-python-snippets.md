---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RoomList()
request_body.@odata_type = 'microsoft.graph.roomList'

request_body.display_name = 'Building 1'

request_body.phone = '555-555-0100'

address = PhysicalAddress()
address.street = '4567 Main Street'

address.city = 'Buffalo'

address.state = 'NY'

address.postal_code = '98052'

address.country_or_region = 'USA'


request_body.address = address
geo_coordinates = OutlookGeoCoordinates()
geo_coordinates.altitude=null

geo_coordinates.Latitude = 47

geo_coordinates.Longitude = -122

geo_coordinates.accuracy=null

geo_coordinates.altitudeAccuracy=null


request_body.geo_coordinates = geo_coordinates



result = await client.places.by_place_id('place-id').patch(request_body = request_body)


```