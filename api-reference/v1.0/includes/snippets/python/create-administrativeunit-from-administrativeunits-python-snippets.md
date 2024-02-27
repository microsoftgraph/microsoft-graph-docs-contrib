---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.administrative_unit import AdministrativeUnit

graph_client = GraphServiceClient(credentials, scopes)

request_body = AdministrativeUnit(
	display_name = "Seattle District Technical Schools",
	description = "Seattle district technical schools administration",
	visibility = "HiddenMembership",
)

result = await graph_client.directory.administrative_units.post(request_body)


```