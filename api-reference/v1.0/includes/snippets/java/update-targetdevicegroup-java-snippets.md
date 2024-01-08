---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TargetDeviceGroup targetDeviceGroup = new TargetDeviceGroup();
targetDeviceGroup.displayName = "Device Group A";

graphClient.servicePrincipals("00af5dfb-85da-4b41-a677-0c6b86dd34f8").remoteDesktopSecurityConfiguration().targetDeviceGroups("b9e4eae4-b781-45a1-ce65-f2dd8ac3b696")
	.buildRequest()
	.patch(targetDeviceGroup);

```