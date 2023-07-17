---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OffsetDateTime postponeUntilDateTime = OffsetDateTimeSerializer.deserialize("03/01/2023 09:40:39");

graphClient.directory().recommendations("0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry").impactedResources("dbd9935e-15b7-4800-9049-8d8704c23ad2")
	.postpone(ImpactedResourcePostponeParameterSet
		.newBuilder()
		.withPostponeUntilDateTime(postponeUntilDateTime)
		.build())
	.buildRequest()
	.post();

```