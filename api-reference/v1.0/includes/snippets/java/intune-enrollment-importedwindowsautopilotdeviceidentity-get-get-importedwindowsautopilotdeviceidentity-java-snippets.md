---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ImportedWindowsAutopilotDeviceIdentity importedWindowsAutopilotDeviceIdentity = graphClient.deviceManagement().importedWindowsAutopilotDeviceIdentities("{importedWindowsAutopilotDeviceIdentityId}")
	.buildRequest()
	.get();

```