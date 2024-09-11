---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.room_list import RoomList
from msgraph.generated.models.physical_address import PhysicalAddress
from msgraph.generated.models.outlook_geo_coordinates import OutlookGeoCoordinates
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RoomList(
	odata_type = "microsoft.graph.roomList",
	display_name = "Building 1",
	phone = "555-555-0100",
	address = PhysicalAddress(
		street = "4567 Main Street",
		city = "Buffalo",
		state = "NY",
		postal_code = "98052",
		country_or_region = "USA",
	),
	geo_coordinates = OutlookGeoCoordinates(
		altitude = None,
		latitude = 47,
		longitude = -122,
		accuracy = None,
		altitude_accuracy = None,
	),
)

result = await graph_client.places.by_place_id('place-id').patch(request_body)


```