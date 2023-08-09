---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("7146daa8-1b4b-4a66-b2f7-cf593d03c8d2")
	.buildRequest()
	.delete();

```