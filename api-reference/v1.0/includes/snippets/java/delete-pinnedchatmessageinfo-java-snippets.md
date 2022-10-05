---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.chats("19:cf66807577b149cca1b7af0c32eec122@thread.v2").pinnedMessages("1616964509832")
	.buildRequest()
	.delete();

```