---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcFrontLineServicePlanCollectionPage frontLineServicePlans = graphClient.deviceManagement().virtualEndpoint().frontLineServicePlans()
	.buildRequest()
	.get();

```