---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LandingPageCollectionPage landingPages = graphClient.security().attackSimulation().landingPages()
	.buildRequest()
	.filter("source eq 'tenant'")
	.get();

```