---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkUserIdentity user = new TeamworkUserIdentity();

graphClient.chats("{chatsId}")
	.removeAllAccessForUser(ChatRemoveAllAccessForUserParameterSet
		.newBuilder()
		.withUser(user)
		.build())
	.buildRequest()
	.post();

```