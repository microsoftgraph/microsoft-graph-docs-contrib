---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SiteDeltaCollectionPage delta = graphClient.sites()
	.delta()
	.buildRequest()
	.get();

```