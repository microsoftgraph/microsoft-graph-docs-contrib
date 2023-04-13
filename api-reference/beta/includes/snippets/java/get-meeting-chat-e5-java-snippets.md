---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Chat chat = graphClient.chats("19:ebe3857aa388434bab0cad9d2e09f4de@thread.v2")
	.buildRequest()
	.expand("lastMessagePreview")
	.get();

```