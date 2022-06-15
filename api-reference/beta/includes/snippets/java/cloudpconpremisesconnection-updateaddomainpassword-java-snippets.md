---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String adDomainPassword = "AdDomainPassword value";

graphClient.deviceManagement().virtualEndpoint().onPremisesConnections("{Id}")
	.updateAdDomainPassword(CloudPcOnPremisesConnectionUpdateAdDomainPasswordParameterSet
		.newBuilder()
		.withAdDomainPassword(adDomainPassword)
		.build())
	.buildRequest()
	.post();

```