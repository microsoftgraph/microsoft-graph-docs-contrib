---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PinnedChatMessageInfo pinnedChatMessageInfo = new PinnedChatMessageInfo();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("message@odata.bind", "https://graph.microsoft.com/beta/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616964509832");
pinnedChatMessageInfo.setAdditionalData(additionalData);
PinnedChatMessageInfo result = graphClient.chats().byChatId("{chat-id}").pinnedMessages().post(pinnedChatMessageInfo);


```