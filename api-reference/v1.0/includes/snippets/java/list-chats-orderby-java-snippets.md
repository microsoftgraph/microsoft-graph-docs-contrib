---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatCollectionPage chats = graphClient.chats()
	.buildRequest()
	.orderBy("lastMessagePreview/createdDateTime desc")
	.get();

```