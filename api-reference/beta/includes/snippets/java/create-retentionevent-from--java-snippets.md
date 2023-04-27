---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RetentionEvent retentionEvent = new RetentionEvent();
retentionEvent.displayName = "String";
retentionEvent.description = "String";
LinkedList<EventQuery> eventQueriesList = new LinkedList<EventQuery>();
EventQueries eventQueries = new EventQueries();
eventQueriesList.add(eventQueries);
retentionEvent.eventQueries = eventQueriesList;
retentionEvent.eventTriggerDateTime = OffsetDateTimeSerializer.deserialize("String (timestamp)");
IdentitySet createdBy = new IdentitySet();
retentionEvent.createdBy = createdBy;
LinkedList<EventPropagationResult> eventPropagationResultsList = new LinkedList<EventPropagationResult>();
EventPropagationResult eventPropagationResults = new EventPropagationResult();
eventPropagationResultsList.add(eventPropagationResults);
retentionEvent.eventPropagationResults = eventPropagationResultsList;
RetentionEventStatus eventStatus = new RetentionEventStatus();
retentionEvent.eventStatus = eventStatus;
retentionEvent.lastStatusUpdateDateTime = OffsetDateTimeSerializer.deserialize("String (timestamp)");

graphClient.security().triggers().retentionEvents()
	.buildRequest()
	.post(retentionEvent);

```