---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ReferenceCreate referenceCreate = new com.microsoft.graph.beta.models.ReferenceCreate();
referenceCreate.setOdataId("https://graph.microsoft.com/beta/onPremisesPublishingProfiles/provisioning/agentGroups/2B032383-897C-42BA-917E-700B6890BDC3/");
graphClient.onPremisesPublishingProfiles().byOnPremisesPublishingProfileId("{onPremisesPublishingProfile-id}").publishedResources().byPublishedResourceId("{publishedResource-id}").agentGroups().ref().post(referenceCreate);


```