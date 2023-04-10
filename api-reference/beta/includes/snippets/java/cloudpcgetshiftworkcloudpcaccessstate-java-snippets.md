---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ShiftWorkCloudPcAccessState shiftWorkCloudPcAccessState = graphClient.me().cloudPCs("{cloudPCId}")
	.getShiftWorkCloudPcAccessState()
	.buildRequest()
	.get();

```