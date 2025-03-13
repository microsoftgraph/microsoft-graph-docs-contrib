---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.presence.setstatusmessage.SetStatusMessagePostRequestBody setStatusMessagePostRequestBody = new com.microsoft.graph.beta.users.item.presence.setstatusmessage.SetStatusMessagePostRequestBody();
PresenceStatusMessage statusMessage = new PresenceStatusMessage();
ItemBody message = new ItemBody();
message.setContent("Hey I am available now");
message.setContentType(BodyType.Text);
statusMessage.setMessage(message);
setStatusMessagePostRequestBody.setStatusMessage(statusMessage);
graphClient.users().byUserId("{user-id}").presence().setStatusMessage().post(setStatusMessagePostRequestBody);


```