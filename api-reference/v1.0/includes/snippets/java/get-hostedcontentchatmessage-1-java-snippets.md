---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessageHostedContent result = graphClient.chats().byChatId("{chat-id}").messages().byChatMessageId("{chatMessage-id}").hostedContents().byChatMessageHostedContentId("{chatMessageHostedContent-id}").get();


```