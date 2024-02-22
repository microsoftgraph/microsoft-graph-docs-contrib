---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workspace import Workspace

graph_client = GraphServiceClient(credentials, scopes)

request_body = Workspace(
	odata_type = "microsoft.graph.workspace",
	nickname = "Conf Room",
	building = "1",
	label = "100",
	capacity = 50,
	is_wheel_chair_accessible = False,
)

result = await graph_client.places.by_place_id('place-id').patch(request_body)


```