---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = RetentionEvent(
	odata_type = "#microsoft.graph.security.retentionEvent",
	display_name = "String",
	description = "String",
	event_queries = [
		EventQuery(
			odata_type = "microsoft.graph.security.eventQueries",
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