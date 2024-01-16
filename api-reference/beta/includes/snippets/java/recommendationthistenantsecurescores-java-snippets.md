---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RecommendationTenantSecureScoresCollectionPage tenantSecureScores = graphClient.directory().recommendations()
	.tenantSecureScores()
	.buildRequest()
	.get();

```