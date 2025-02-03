---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.open_type_extension import OpenTypeExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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