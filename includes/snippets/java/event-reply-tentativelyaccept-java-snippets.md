---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String comment = "I will probably be able to make it.";

Boolean sendResponse = true;

graphClient.me().events("AAMkADADVj3fyAABZ5ieyAAA=")
	.tentativelyAccept(EventTentativelyAcceptParameterSet
		.newBuilder()
		.withProposedNewTime(null)
		.withSendResponse(sendResponse)
		.withComment(comment)
		.build())
	.buildRequest()
	.post();

```