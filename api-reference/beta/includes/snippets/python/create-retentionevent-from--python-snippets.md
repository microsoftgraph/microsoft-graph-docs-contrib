---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.retention_event import RetentionEvent
from msgraph.generated.models.event_query import EventQuery
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.event_propagation_result import EventPropagationResult
from msgraph.generated.models.retention_event_status import RetentionEventStatus

graph_client = GraphServiceClient(credentials, scopes)

request_body = RetentionEvent(
	odata_type = "#microsoft.graph.security.retentionEvent",
	display_name = "String",
	description = "String",
	event_queries = [
		EventQuery(
			odata_type = "microsoft.graph.security.eventQuery",
		),
	],
	event_trigger_date_time = "String (timestamp)",
	created_by = IdentitySet(
		odata_type = "microsoft.graph.identitySet",
	),
	event_propagation_results = [
		EventPropagationResult(
			odata_type = "microsoft.graph.security.eventPropagationResult",
		),
	],
	event_status = RetentionEventStatus(
		odata_type = "microsoft.graph.security.retentionEventStatus",
	),
	last_status_update_date_time = "String (timestamp)",
)

result = await graph_client.security.triggers.retention_events.post(request_body)


```