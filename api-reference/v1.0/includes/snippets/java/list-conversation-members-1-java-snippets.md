---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConversationMemberCollectionPage members = graphClient.me().chats("19:09ddc990-3821-4ceb-8019-24d39998f93e_48d31887-5fad-4d73-a9f5-3c356e68a038@unq.gbl.spaces").members()
	.buildRequest()
	.get();

```