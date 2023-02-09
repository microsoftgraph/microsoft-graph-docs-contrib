---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("8f98f01d-1a73-401a-b9e9-9fd1e6f5e5ap").chats("19:22273db3497f4b32bue61f6e82be21c5@thread.tacv2").messages("1649864053377")
	.undoSoftDelete()
	.buildRequest()
	.post();

```