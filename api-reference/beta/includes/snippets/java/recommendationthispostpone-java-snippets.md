---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OffsetDateTime postponeUntilDateTime = OffsetDateTimeSerializer.deserialize("02/01/2023 02:53:00");

graphClient.directory().recommendations("0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA")
	.postpone(RecommendationPostponeParameterSet
		.newBuilder()
		.withPostponeUntilDateTime(postponeUntilDateTime)
		.build())
	.buildRequest()
	.post();

```