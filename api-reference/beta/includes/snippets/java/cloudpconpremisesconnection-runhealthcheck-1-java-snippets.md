---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceManagement().virtualEndpoint().cloudPCs("{id}")
	.reprovision(CloudPCReprovisionParameterSet
		.newBuilder()
		.withUserAccountType(null)
		.withOsVersion(null)
		.build())
	.buildRequest()
	.post();

```