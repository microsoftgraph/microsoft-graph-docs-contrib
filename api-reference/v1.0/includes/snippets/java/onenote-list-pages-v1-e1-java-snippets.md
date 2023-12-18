---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnenotePageCollectionPage pages = graphClient.me().onenote().pages()
	.buildRequest()
	.get();

```