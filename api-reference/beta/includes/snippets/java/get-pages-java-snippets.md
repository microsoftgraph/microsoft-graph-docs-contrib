---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SitePageCollectionPage sitePage = graphClient.sites("{site-id}").pages().microsoft.graph.sitePage()
	.buildRequest()
	.get();

```