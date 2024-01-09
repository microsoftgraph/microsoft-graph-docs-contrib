---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationsMetricCollectionWithReferencesPage authentications = graphClient.reports().userInsights().daily().authentications()
	.buildRequest()
	.get();

```