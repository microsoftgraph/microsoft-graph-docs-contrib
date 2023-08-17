---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppCredentialSignInActivityCollectionPage appCredentialSignInActivities = graphClient.reports().appCredentialSignInActivities()
	.buildRequest()
	.filter("appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'")
	.get();

```