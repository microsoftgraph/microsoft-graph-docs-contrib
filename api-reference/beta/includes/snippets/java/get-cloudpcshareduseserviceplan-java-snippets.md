---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcSharedUseServicePlan cloudPcSharedUseServicePlan = graphClient.deviceManagement().virtualEndpoint().sharedUseServicePlans("613a8d85-6c33-1268-9f55-b96a6540017c")
	.buildRequest()
	.get();

```