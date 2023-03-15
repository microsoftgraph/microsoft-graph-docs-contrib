---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConversationMemberCollectionPage members = graphClient.chats("19:9ef2dcdf14ba44cbae25c2f5d53171ba@thread.v2").members()
	.buildRequest()
	.get();

```