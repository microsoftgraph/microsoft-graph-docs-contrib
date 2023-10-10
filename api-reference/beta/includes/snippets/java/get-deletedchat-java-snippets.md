---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeletedChat deletedChat = graphClient.teamwork().deletedChats("19:64dedcac16b74a209b1f2ecb7f99c5e2@thread.v2")
	.buildRequest()
	.get();

```