---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
ChatMessageBody body = new ChatMessageBody();
body.setMessageBodyContentType(ChatMessageBodyContentType.Html);
body.setContent("<emoji alt=\"😶‍🌫️\"></emoji>");
chatMessage.setBody(body);
ChatMessage result = graphClient.chats().byChatId("{chat-id}").messages().post(chatMessage);


```