---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceInstallState deviceInstallState = graphClient.deviceAppManagement().managedEBooks("{managedEBookId}").deviceStates("{deviceInstallStateId}")
	.buildRequest()
	.get();

```