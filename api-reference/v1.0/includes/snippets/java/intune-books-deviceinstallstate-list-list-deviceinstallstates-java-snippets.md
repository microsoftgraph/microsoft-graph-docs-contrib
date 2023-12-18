---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceInstallStateCollectionPage deviceStates = graphClient.deviceAppManagement().managedEBooks("{managedEBookId}").deviceStates()
	.buildRequest()
	.get();

```