---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CompanySubscriptionCollectionPage subscriptions = graphClient.directory().subscriptions()
	.buildRequest()
	.get();

```