---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.presence.setstatusmessage.SetStatusMessagePostRequestBody setStatusMessagePostRequestBody = new com.microsoft.graph.users.item.presence.setstatusmessage.SetStatusMessagePostRequestBody();
PresenceStatusMessage statusMessage = new PresenceStatusMessage();
ItemBody message = new ItemBody();
message.setContent("Hey I'm currently in a meeting.");
message.setContentType(BodyType.Text);
statusMessage.setMessage(message);
DateTimeTimeZone expiryDateTime = new DateTimeTimeZone();
expiryDateTime.setDateTime("2022-10-18T17:05:33.2079781");
expiryDateTime.setTimeZone("Pacific Standard Time");
statusMessage.setExpiryDateTime(expiryDateTime);
setStatusMessagePostRequestBody.setStatusMessage(statusMessage);
graphClient.users().byUserId("{user-id}").presence().setStatusMessage().post(setStatusMessagePostRequestBody);


```