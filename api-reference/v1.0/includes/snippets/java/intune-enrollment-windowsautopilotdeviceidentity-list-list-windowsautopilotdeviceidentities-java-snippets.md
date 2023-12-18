---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsAutopilotDeviceIdentityCollectionPage windowsAutopilotDeviceIdentities = graphClient.deviceManagement().windowsAutopilotDeviceIdentities()
	.buildRequest()
	.get();

```