---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.open_type_extension import OpenTypeExtension

graph_client = GraphServiceClient(credentials, scopes)

request_body = OpenTypeExtension(
	odata_type = "microsoft.graph.openTypeExtension",
	extension_name = "Com.Contoso.Deal",
	additional_data = {
			"company_name" : "Alpine Skis",
			"deal_value" : 1010100,
			"expiration_date" : "2015-07-03T13:04:00.000Z",
	}
)

result = await graph_client.groups.by_group_id('group-id').events.by_event_id('event-id').extensions.post(request_body)


```