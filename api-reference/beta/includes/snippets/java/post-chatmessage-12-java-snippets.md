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

graphClient.chats("19:7fb82b685f9c457296a0ab6a1d98b4c1@thread.v2").messages()
	.buildRequest()
	.post(chatMessage);

```