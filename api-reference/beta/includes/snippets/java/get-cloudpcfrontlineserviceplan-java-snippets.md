---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcFrontLineServicePlan cloudPcFrontLineServicePlan = graphClient.deviceManagement().virtualEndpoint().frontLineServicePlans("dd3801e2-4aa1-4b16-a44b-243e55497584")
	.buildRequest()
	.get();

```