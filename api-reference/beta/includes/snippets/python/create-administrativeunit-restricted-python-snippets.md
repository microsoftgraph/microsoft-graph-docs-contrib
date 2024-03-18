---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.administrative_unit import AdministrativeUnit

graph_client = GraphServiceClient(credentials, scopes)

request_body = AdministrativeUnit(
	display_name = "Executive Division",
	description = "Executive division administration",
	is_member_management_restricted = True,
)

result = await graph_client.administrative_units.post(request_body)


```