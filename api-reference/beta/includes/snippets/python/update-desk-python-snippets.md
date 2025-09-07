---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.desk import Desk
from msgraph_beta.generated.models.drop_in_place_mode import DropInPlaceMode
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Desk(
	odata_type = "microsoft.graph.desk",
	mode = DropInPlaceMode(
		odata_type = "microsoft.graph.dropInPlaceMode",
	),
)

result = await graph_client.places.by_place_id('place-id').patch(request_body)


```