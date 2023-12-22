---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppCredentialSignInActivityCollectionPage appCredentialSignInActivities = graphClient.reports().appCredentialSignInActivities()
	.buildRequest()
	.get();

```