---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ActiveUsersBreakdownMetricCollectionWithReferencesPage activeUsersBreakdown = graphClient.reports().userInsights().daily().activeUsersBreakdown()
	.buildRequest()
	.get();

```