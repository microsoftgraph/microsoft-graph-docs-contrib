---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcReviewStatus cloudPcReviewStatus = graphClient.deviceManagement().managedDevices("185f01c2de954929afb129392e5d9f47")
	.getCloudPcReviewStatus()
	.buildRequest()
	.get();

```