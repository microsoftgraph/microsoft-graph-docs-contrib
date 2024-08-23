---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TargetDeviceGroup targetDeviceGroup = new TargetDeviceGroup();
targetDeviceGroup.setOdataType("#microsoft.graph.targetDeviceGroup");
targetDeviceGroup.setDisplayName("Device Group A");
TargetDeviceGroup result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").remoteDesktopSecurityConfiguration().targetDeviceGroups().byTargetDeviceGroupId("{targetDeviceGroup-id}").patch(targetDeviceGroup);


```