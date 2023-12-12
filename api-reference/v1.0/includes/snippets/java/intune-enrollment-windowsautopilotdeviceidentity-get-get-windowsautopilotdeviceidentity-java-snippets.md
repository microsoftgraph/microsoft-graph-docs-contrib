---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsAutopilotDeviceIdentity windowsAutopilotDeviceIdentity = graphClient.deviceManagement().windowsAutopilotDeviceIdentities("{windowsAutopilotDeviceIdentityId}")
	.buildRequest()
	.get();

```