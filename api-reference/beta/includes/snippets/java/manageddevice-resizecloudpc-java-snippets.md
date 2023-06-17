---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String targetServicePlanId = "30d0e128-de93-41dc-89ec-33d84bb662a0";

graphClient.deviceManagement().managedDevices("{managedDeviceId}")
	.resizeCloudPc(ManagedDeviceResizeCloudPcParameterSet
		.newBuilder()
		.withTargetServicePlanId(targetServicePlanId)
		.build())
	.buildRequest()
	.post();

```