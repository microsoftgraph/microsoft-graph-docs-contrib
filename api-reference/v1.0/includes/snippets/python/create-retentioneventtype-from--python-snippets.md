---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.retention_event_type import RetentionEventType
from msgraph.generated.models.identity_set import IdentitySet
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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