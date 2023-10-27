---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppCredentialSignInActivityCollectionPage appCredentialSignInActivities = graphClient.reports().appCredentialSignInActivities()
	.buildRequest()
	.filter("keyId eq '83f45296-fb8f-4aaa-a399-ac51084e02b7'")
	.get();

```