---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ActiveUsersMetricCollectionWithReferencesPage activeUsers = graphClient.reports().userInsights().daily().activeUsers()
	.buildRequest()
	.get();

```