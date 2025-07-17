---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.retention_event import RetentionEvent
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RetentionEvent(
	odata_type = "#microsoft.graph.security.retentionEvent",
	display_name = "String",
	description = "String",
	event_trigger_date_time = "String (timestamp)",
	additional_data = {
			"event_query" : [
				{
						"@odata_type" : "microsoft.graph.security.eventQuery",
				},
			],
			"retention_event_type@odata_bind" : "https://graph.microsoft.com/v1.0/security/triggerTypes/retentionEventType/9eecef97-fb3c-4c68-825b-4dd74530863a",
	}
)

result = await graph_client.security.triggers.retention_events.post(request_body)


```