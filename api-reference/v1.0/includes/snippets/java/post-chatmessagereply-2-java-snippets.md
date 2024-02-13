---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
OffsetDateTime createdDateTime = OffsetDateTime.parse("2019-02-04T19:58:15.511Z");
chatMessage.setCreatedDateTime(createdDateTime);
ChatMessageFromIdentitySet from = new ChatMessageFromIdentitySet();
Identity user = new Identity();
user.setId("8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca");
user.setDisplayName("John Doe");
from.setUser(user);
chatMessage.setFrom(from);
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("Hello World");
chatMessage.setBody(body);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().byChatMessageId("{chatMessage-id}").replies().post(chatMessage);


```