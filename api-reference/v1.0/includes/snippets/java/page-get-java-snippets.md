---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnenotePage onenotePage = graphClient.me().onenote().pages("{id}")
	.buildRequest()
	.get();

```