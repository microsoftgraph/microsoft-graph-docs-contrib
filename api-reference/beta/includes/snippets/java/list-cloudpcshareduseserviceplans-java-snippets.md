---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcSharedUseServicePlanCollectionPage sharedUseServicePlans = graphClient.deviceManagement().virtualEndpoint().sharedUseServicePlans()
	.buildRequest()
	.get();

```