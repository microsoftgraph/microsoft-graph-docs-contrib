---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdatableAssetGroupCollectionPage updatableAssetGroup = graphClient.admin().windows().updates().updatableAssets().microsoft.graph.windowsUpdates.updatableAssetGroup()
	.buildRequest()
	.get();

```