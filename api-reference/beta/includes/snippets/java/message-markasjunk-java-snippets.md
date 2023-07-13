---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean moveToJunk = true;

graphClient.me().messages("AAMkADhAAATs28OAAA=")
	.markAsJunk(MessageMarkAsJunkParameterSet
		.newBuilder()
		.withMoveToJunk(moveToJunk)
		.build())
	.buildRequest()
	.post();

```