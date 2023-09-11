---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureADDeviceCollectionPage azureADDevice = graphClient.admin().windows().updates().updatableAssets().microsoft.graph.windowsUpdates.azureADDevice()
	.buildRequest()
	.get();

```