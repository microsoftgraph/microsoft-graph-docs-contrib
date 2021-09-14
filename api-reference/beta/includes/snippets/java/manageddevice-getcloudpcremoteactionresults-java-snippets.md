---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceGetCloudPcRemoteActionResultsCollectionPage getCloudPcRemoteActionResults = graphClient.deviceManagement().managedDevices("{managedDeviceId}")
	.getCloudPcRemoteActionResults()
	.buildRequest()
	.get();

```