---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LoginPageCollectionPage loginPages = graphClient.security().attackSimulation().loginPages()
	.buildRequest()
	.filter("source eq 'tenant'")
	.get();

```