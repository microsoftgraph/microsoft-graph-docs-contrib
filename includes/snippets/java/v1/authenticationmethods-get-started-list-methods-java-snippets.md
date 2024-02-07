---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationMethodCollectionPage methods = graphClient.users("CameronW@Contoso.com").authentication().methods()
	.buildRequest()
	.get();

```