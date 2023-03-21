---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PinnedChatMessageInfoCollectionPage pinnedMessages = graphClient.chats("19:d65713bc498c4a428c71ef9353e6ce20@thread.v2").pinnedMessages()
	.buildRequest()
	.get();

```