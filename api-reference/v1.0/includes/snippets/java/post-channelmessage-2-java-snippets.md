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
user.setId("id-value");
user.setDisplayName("Joh Doe");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("userIdentityType", "aadUser");
user.setAdditionalData(additionalData);
from.setUser(user);
chatMessage.setFrom(from);
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("Hello World");
chatMessage.setBody(body);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().post(chatMessage);


```