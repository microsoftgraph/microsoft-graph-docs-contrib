---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PinnedChatMessageInfo pinnedChatMessageInfo = new PinnedChatMessageInfo();
pinnedChatMessageInfo.additionalDataManager().put("message@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616964509832"));

graphClient.chats("19:2da4c29f6d7041eca70b638b43d45437@thread.v2").pinnedMessages()
	.buildRequest()
	.post(pinnedChatMessageInfo);

```