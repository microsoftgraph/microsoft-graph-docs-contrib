---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean moveToInbox = true;

graphClient.me().messages("AAMkADhAAATs28OAAA=")
	.markAsNotJunk(MessageMarkAsNotJunkParameterSet
		.newBuilder()
		.withMoveToInbox(moveToInbox)
		.build())
	.buildRequest()
	.post();

```