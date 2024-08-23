---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.RetentionEvent retentionEvent = new com.microsoft.graph.models.security.RetentionEvent();
retentionEvent.setOdataType("#microsoft.graph.security.retentionEvent");
retentionEvent.setDisplayName("String");
retentionEvent.setDescription("String");
OffsetDateTime eventTriggerDateTime = OffsetDateTime.parse("String (timestamp)");
retentionEvent.setEventTriggerDateTime(eventTriggerDateTime);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> eventQuery = new LinkedList<Object>();
 property = new ();
property.setOdataType("microsoft.graph.security.eventQuery");
eventQuery.add(property);
additionalData.put("eventQuery", eventQuery);
additionalData.put("retentionEventType@odata.bind", "https://graph.microsoft.com/v1.0/security/triggerTypes/retentionEventType/9eecef97-fb3c-4c68-825b-4dd74530863a");
retentionEvent.setAdditionalData(additionalData);
com.microsoft.graph.models.security.RetentionEvent result = graphClient.security().triggers().retentionEvents().post(retentionEvent);


```