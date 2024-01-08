---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String dismissReason = "Recommendations is not relevant for my organization because...";

graphClient.directory().recommendations("0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA")
	.dismiss(RecommendationDismissParameterSet
		.newBuilder()
		.withDismissReason(dismissReason)
		.build())
	.buildRequest()
	.post();

```