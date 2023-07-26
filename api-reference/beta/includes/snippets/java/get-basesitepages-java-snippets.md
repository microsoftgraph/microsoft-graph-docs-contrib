---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SitePageCollectionPage pages = graphClient.sites("{site-id}").pages()
	.buildRequest()
	.get();

```