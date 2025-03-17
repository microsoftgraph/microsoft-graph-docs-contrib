---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ReferenceCreate referenceCreate = new com.microsoft.graph.beta.models.ReferenceCreate();
referenceCreate.setOdataId("https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/daf709c2-6072-414f-b08c-bb2a80c631c");
graphClient.onPremisesPublishingProfiles().byOnPremisesPublishingProfileId("{onPremisesPublishingProfile-id}").connectors().byConnectorId("{connector-id}").memberOf().ref().post(referenceCreate);


```