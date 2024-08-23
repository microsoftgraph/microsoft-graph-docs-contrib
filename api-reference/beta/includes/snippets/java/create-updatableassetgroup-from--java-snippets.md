---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.UpdatableAssetGroup updatableAsset = new com.microsoft.graph.beta.models.windowsupdates.UpdatableAssetGroup();
updatableAsset.setOdataType("#microsoft.graph.windowsUpdates.updatableAssetGroup");
com.microsoft.graph.models.windowsupdates.UpdatableAsset result = graphClient.admin().windows().updates().updatableAssets().post(updatableAsset);


```