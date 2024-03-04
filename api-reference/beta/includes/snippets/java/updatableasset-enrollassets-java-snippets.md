---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.windows.updates.updatableassets.microsoftgraphwindowsupdatesenrollassets.EnrollAssetsPostRequestBody enrollAssetsPostRequestBody = new com.microsoft.graph.beta.admin.windows.updates.updatableassets.microsoftgraphwindowsupdatesenrollassets.EnrollAssetsPostRequestBody();
enrollAssetsPostRequestBody.setUpdateCategory(com.microsoft.graph.beta.models.windowsupdates.UpdateCategory.Feature);
LinkedList<com.microsoft.graph.beta.models.windowsupdates.UpdatableAsset> assets = new LinkedList<com.microsoft.graph.beta.models.windowsupdates.UpdatableAsset>();
com.microsoft.graph.beta.models.windowsupdates.AzureADDevice updatableAsset = new com.microsoft.graph.beta.models.windowsupdates.AzureADDevice();
updatableAsset.setOdataType("#microsoft.graph.windowsUpdates.azureADDevice");
updatableAsset.setId("String (identifier)");
assets.add(updatableAsset);
enrollAssetsPostRequestBody.setAssets(assets);
graphClient.admin().windows().updates().updatableAssets().microsoftGraphWindowsUpdatesEnrollAssets().post(enrollAssetsPostRequestBody);


```