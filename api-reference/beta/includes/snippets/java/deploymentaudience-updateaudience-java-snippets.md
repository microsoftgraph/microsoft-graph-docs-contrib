---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.windows.updates.deploymentaudiences.item.microsoftgraphwindowsupdatesupdateaudience.UpdateAudiencePostRequestBody updateAudiencePostRequestBody = new com.microsoft.graph.beta.admin.windows.updates.deploymentaudiences.item.microsoftgraphwindowsupdatesupdateaudience.UpdateAudiencePostRequestBody();
LinkedList<com.microsoft.graph.beta.models.windowsupdates.UpdatableAsset> addMembers = new LinkedList<com.microsoft.graph.beta.models.windowsupdates.UpdatableAsset>();
com.microsoft.graph.beta.models.windowsupdates.AzureADDevice updatableAsset = new com.microsoft.graph.beta.models.windowsupdates.AzureADDevice();
updatableAsset.setOdataType("#microsoft.graph.windowsUpdates.azureADDevice");
updatableAsset.setId("String (identifier)");
addMembers.add(updatableAsset);
updateAudiencePostRequestBody.setAddMembers(addMembers);
graphClient.admin().windows().updates().deploymentAudiences().byDeploymentAudienceId("{deploymentAudience-id}").microsoftGraphWindowsUpdatesUpdateAudience().post(updateAudiencePostRequestBody);


```