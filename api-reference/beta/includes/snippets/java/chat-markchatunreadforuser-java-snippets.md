---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkUserIdentity user = new TeamworkUserIdentity();
user.id = "d864e79f-a516-4d0f-9fee-0eeb4d61fdc2";

String tenantId = "2a690434-97d9-4eed-83a6-f5f13600199a";

OffsetDateTime lastMessageReadDateTime = OffsetDateTimeSerializer.deserialize("05/27/2021 22:13:01");

graphClient.chats("19:7d898072-792c-4006-bb10-5ca9f2590649_8ea0e38b-efb3-4757-924a-5f94061cf8c2@unq.gbl.spaces")
	.markChatUnreadForUser(ChatMarkChatUnreadForUserParameterSet
		.newBuilder()
		.withUser(user)
		.withTenantId(tenantId)
		.withLastMessageReadDateTime(lastMessageReadDateTime)
		.build())
	.buildRequest()
	.post();

```