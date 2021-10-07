---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatGetAllMessagesCollectionPage getAllMessages = graphClient.users("0b4f1cf6-54c8-4820-bbb7-2a1f4257ade5").chats()
	.getAllMessages()
	.buildRequest()
	.top(2)
	.get();

```