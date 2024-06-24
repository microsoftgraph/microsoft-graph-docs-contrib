---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Chat chat = new Chat();
chat.setTopic("Group chat title update");
Chat result = graphClient.chats().byChatId("{chat-id}").patch(chat);


```