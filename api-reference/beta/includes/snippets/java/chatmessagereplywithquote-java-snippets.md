---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.chats.item.messages.replywithquote.ReplyWithQuotePostRequestBody replyWithQuotePostRequestBody = new com.microsoft.graph.beta.chats.item.messages.replywithquote.ReplyWithQuotePostRequestBody();
LinkedList<String> messageIds = new LinkedList<String>();
messageIds.add("1728088338580");
replyWithQuotePostRequestBody.setMessageIds(messageIds);
ChatMessage replyMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.setContent("Hello World");
replyMessage.setBody(body);
replyWithQuotePostRequestBody.setReplyMessage(replyMessage);
var result = graphClient.chats().byChatId("{chat-id}").messages().replyWithQuote().post(replyWithQuotePostRequestBody);


```