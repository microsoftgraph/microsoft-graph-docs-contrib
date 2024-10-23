---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.retention_event import RetentionEvent
from msgraph_beta.generated.models.security.event_query import EventQuery
from msgraph_beta.generated.models.identity_set import IdentitySet
from msgraph_beta.generated.models.security.event_propagation_result import EventPropagationResult
from msgraph_beta.generated.models.security.retention_event_status import RetentionEventStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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