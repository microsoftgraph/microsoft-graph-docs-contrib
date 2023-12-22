---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.communications().calls("112f7296-5fa4-42ca-bae8-6a692b15d4b8").participants("a7ebfb2d-871e-419c-87af-27290b22e8db")
	.buildRequest()
	.delete();

```