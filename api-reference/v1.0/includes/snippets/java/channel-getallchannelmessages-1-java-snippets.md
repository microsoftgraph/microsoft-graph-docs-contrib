---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChannelGetAllMessagesCollectionPage getAllMessages = graphClient.teams("01fe12e0-e720-44fd-8854-28c66d1bee40").channels()
	.getAllMessages()
	.buildRequest()
	.filter("lastModifiedDateTime gt 2019-11-01T00:00:00Z and lastModifiedDateTime lt 2021-11-01T00:00:00Z")
	.get();

```