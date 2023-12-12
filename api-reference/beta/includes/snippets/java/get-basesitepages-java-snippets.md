---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BaseSitePageCollectionPage pages = graphClient.sites("{site-id}").pages()
	.buildRequest()
	.get();

```