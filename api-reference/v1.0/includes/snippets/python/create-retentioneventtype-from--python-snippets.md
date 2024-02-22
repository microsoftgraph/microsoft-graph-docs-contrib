---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.retention_event_type import RetentionEventType
from msgraph.generated.models.identity_set import IdentitySet

graph_client = GraphServiceClient(credentials, scopes)

request_body = RetentionEventType(
	odata_type = "#microsoft.graph.security.retentionEventType",
	display_name = "String",
	description = "String",
	created_by = IdentitySet(
		odata_type = "microsoft.graph.identitySet",
	),
)

result = await graph_client.security.trigger_types.retention_event_types.post(request_body)


```