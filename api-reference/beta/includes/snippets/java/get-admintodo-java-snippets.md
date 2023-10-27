---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdminTodo adminTodo = graphClient.admin().todo()
	.buildRequest()
	.get();

```