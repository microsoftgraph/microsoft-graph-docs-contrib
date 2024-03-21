---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.RetentionEventType retentionEventType = new com.microsoft.graph.models.security.RetentionEventType();
retentionEventType.setOdataType("#microsoft.graph.security.retentionEventType");
retentionEventType.setDisplayName("String");
retentionEventType.setDescription("String");
IdentitySet createdBy = new IdentitySet();
createdBy.setOdataType("microsoft.graph.identitySet");
retentionEventType.setCreatedBy(createdBy);
com.microsoft.graph.models.security.RetentionEventType result = graphClient.security().triggerTypes().retentionEventTypes().post(retentionEventType);


```