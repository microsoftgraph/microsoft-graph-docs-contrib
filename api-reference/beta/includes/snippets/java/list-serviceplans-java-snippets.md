---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcServicePlanCollectionPage servicePlans = graphClient.deviceManagement().virtualEndpoint().servicePlans()
	.buildRequest()
	.get();

```