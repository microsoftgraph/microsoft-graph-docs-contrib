---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessage chatMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "<emoji alt=\"😶‍🌫️\"></emoji>";
chatMessage.body = body;

graphClient.chats("19:b7867210a3fa4848a5a2a30c210eb9ae@thread.v2").messages()
	.buildRequest()
	.post(chatMessage);

```