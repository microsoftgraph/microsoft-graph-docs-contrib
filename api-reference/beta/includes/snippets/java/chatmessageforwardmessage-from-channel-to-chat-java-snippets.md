---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teams.item.channels.item.messages.forwardtochat.ForwardToChatPostRequestBody forwardToChatPostRequestBody = new com.microsoft.graph.beta.teams.item.channels.item.messages.forwardtochat.ForwardToChatPostRequestBody();
LinkedList<String> targetChatIds = new LinkedList<String>();
targetChatIds.add("19:e2ed97baac8e4bffbb91299a38996790@thread.v2");
forwardToChatPostRequestBody.setTargetChatIds(targetChatIds);
LinkedList<String> messageIds = new LinkedList<String>();
messageIds.add("1728088338580");
forwardToChatPostRequestBody.setMessageIds(messageIds);
ChatMessage additionalMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.setContent("Hello World");
additionalMessage.setBody(body);
forwardToChatPostRequestBody.setAdditionalMessage(additionalMessage);
var result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().forwardToChat().post(forwardToChatPostRequestBody);


```