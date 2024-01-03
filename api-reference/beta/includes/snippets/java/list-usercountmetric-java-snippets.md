---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserCountMetricCollectionWithReferencesPage userCount = graphClient.reports().userInsights().daily().userCount()
	.buildRequest()
	.get();

```