---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RecommendationCollectionPage recommendations = graphClient.directory().recommendations()
	.buildRequest()
	.filter("id eq '0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA'")
	.expand("impactedResources")
	.get();

```