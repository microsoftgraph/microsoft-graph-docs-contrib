---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RetentionEvent()
request_body.@odata_type = '#microsoft.graph.security.retentionEvent'

request_body.display_name = 'String'

request_body.description = 'String'

event_queries_event_query1 = EventQuery()
event_queries_event_query1.@odata_type = 'microsoft.graph.security.eventQueries'


eventQueriesArray []= eventQueriesEventQuery1;
request_body.eventqueries(eventQueriesArray)


request_body.eventTriggerDateTime = DateTime('String (timestamp)')

created_by = IdentitySet()
created_by.@odata_type = 'microsoft.graph.identitySet'


request_body.created_by = created_by
event_propagation_results_event_propagation_result1 = EventPropagationResult()
event_propagation_results_event_propagation_result1.@odata_type = 'microsoft.graph.security.eventPropagationResult'


eventPropagationResultsArray []= eventPropagationResultsEventPropagationResult1;
request_body.eventpropagationresults(eventPropagationResultsArray)


event_status = RetentionEventStatus()
event_status.@odata_type = 'microsoft.graph.security.retentionEventStatus'


request_body.event_status = event_status
request_body.lastStatusUpdateDateTime = DateTime('String (timestamp)')




result = await client.security.triggers.retention_events.post(request_body = request_body)


```