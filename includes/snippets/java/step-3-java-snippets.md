---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessage chatMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.content = "Hello World";
chatMessage.body = body;

graphClient.chats("19:b1234aaa12345a123aa12aa12aaaa1a9@thread.v2").messages()
	.buildRequest()
	.post(chatMessage);

```