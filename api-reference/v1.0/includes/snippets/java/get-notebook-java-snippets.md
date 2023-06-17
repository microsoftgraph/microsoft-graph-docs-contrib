---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Notebook notebook = graphClient.me().onenote().notebooks("1-e13f257d-78c6-46cf-ae8c-13686517ac5f")
	.buildRequest()
	.get();

```