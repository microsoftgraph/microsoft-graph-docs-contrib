---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PresenceStatusMessage statusMessage = new PresenceStatusMessage();
ItemBody message = new ItemBody();
message.content = "Hey I am available now";
message.contentType = BodyType.TEXT;
statusMessage.message = message;

graphClient.users("fa8bf3dc-eca7-46b7-bad1-db199b62afc3").presence()
	.setStatusMessage(PresenceSetStatusMessageParameterSet
		.newBuilder()
		.withStatusMessage(statusMessage)
		.build())
	.buildRequest()
	.post();

```