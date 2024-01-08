---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcLaunchInfo cloudPcLaunchInfo = graphClient.me().cloudPCs("{cloudPCId}")
	.getCloudPcLaunchInfo()
	.buildRequest()
	.get();

```