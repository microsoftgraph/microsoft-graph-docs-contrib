---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PresenceStatusMessage statusMessage = new PresenceStatusMessage();
ItemBody message = new ItemBody();
message.content = "Hey I'm currently in a meeting.";
message.contentType = BodyType.TEXT;
statusMessage.message = message;
DateTimeTimeZone expiryDateTime = new DateTimeTimeZone();
expiryDateTime.dateTime = "2022-10-18T17:05:33.2079781";
expiryDateTime.timeZone = "Pacific Standard Time";
statusMessage.expiryDateTime = expiryDateTime;

graphClient.users("fa8bf3dc-eca7-46b7-bad1-db199b62afc3").presence()
	.setStatusMessage(PresenceSetStatusMessageParameterSet
		.newBuilder()
		.withStatusMessage(statusMessage)
		.build())
	.buildRequest()
	.post();

```