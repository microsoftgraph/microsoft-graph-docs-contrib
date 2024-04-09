---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.RetentionEvent retentionEvent = new com.microsoft.graph.beta.models.security.RetentionEvent();
retentionEvent.setOdataType("#microsoft.graph.security.retentionEvent");
retentionEvent.setDisplayName("String");
retentionEvent.setDescription("String");
LinkedList<com.microsoft.graph.beta.models.security.EventQuery> eventQueries = new LinkedList<com.microsoft.graph.beta.models.security.EventQuery>();
com.microsoft.graph.beta.models.security.EventQuery eventQuery = new com.microsoft.graph.beta.models.security.EventQuery();
eventQuery.setOdataType("microsoft.graph.security.eventQuery");
eventQueries.add(eventQuery);
retentionEvent.setEventQueries(eventQueries);
OffsetDateTime eventTriggerDateTime = OffsetDateTime.parse("String (timestamp)");
retentionEvent.setEventTriggerDateTime(eventTriggerDateTime);
IdentitySet createdBy = new IdentitySet();
createdBy.setOdataType("microsoft.graph.identitySet");
retentionEvent.setCreatedBy(createdBy);
LinkedList<com.microsoft.graph.beta.models.security.EventPropagationResult> eventPropagationResults = new LinkedList<com.microsoft.graph.beta.models.security.EventPropagationResult>();
com.microsoft.graph.beta.models.security.EventPropagationResult eventPropagationResult = new com.microsoft.graph.beta.models.security.EventPropagationResult();
eventPropagationResult.setOdataType("microsoft.graph.security.eventPropagationResult");
eventPropagationResults.add(eventPropagationResult);
retentionEvent.setEventPropagationResults(eventPropagationResults);
com.microsoft.graph.beta.models.security.RetentionEventStatus eventStatus = new com.microsoft.graph.beta.models.security.RetentionEventStatus();
eventStatus.setOdataType("microsoft.graph.security.retentionEventStatus");
retentionEvent.setEventStatus(eventStatus);
OffsetDateTime lastStatusUpdateDateTime = OffsetDateTime.parse("String (timestamp)");
retentionEvent.setLastStatusUpdateDateTime(lastStatusUpdateDateTime);
com.microsoft.graph.models.security.RetentionEvent result = graphClient.security().triggers().retentionEvents().post(retentionEvent);


```