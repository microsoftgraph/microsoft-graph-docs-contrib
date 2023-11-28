---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserRequestsMetricCollectionWithReferencesPage requests = graphClient.reports().userInsights().monthly().requests()
	.buildRequest()
	.get();

```