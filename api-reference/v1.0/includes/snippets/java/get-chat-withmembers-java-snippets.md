---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Chat chat = graphClient.chats("19:d0f51aeb0e8e43d0befb24be72b09ea7@thread.v2")
	.buildRequest()
	.expand("members")
	.get();

```