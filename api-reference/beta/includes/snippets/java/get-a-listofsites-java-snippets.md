---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SiteCollectionPage sites = graphClient.sites()
	.buildRequest()
	.get();

```