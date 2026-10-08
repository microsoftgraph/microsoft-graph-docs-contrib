---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.room import Room
from msgraph_beta.generated.models.booking_type import BookingType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Room(
	odata_type = "microsoft.graph.room",
	display_name = "Conf Room 4/3.3G11",
	parent_id = "46ef7aed-5d94-4fd4-ae03-b333bc7a6955",
	booking_type = BookingType.Standard,
)

result = await graph_client.places.post(request_body)


```