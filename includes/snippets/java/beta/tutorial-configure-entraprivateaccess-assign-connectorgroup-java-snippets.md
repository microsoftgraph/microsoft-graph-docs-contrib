---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ReferenceUpdate referenceUpdate = new com.microsoft.graph.beta.models.ReferenceUpdate();
referenceUpdate.setOdataId("https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationproxy/connectorGroups/daf709c2-6072-414f-b08c-bb2a80c631c");
graphClient.applications().byApplicationId("{application-id}").connectorGroup().ref().put(referenceUpdate);


```