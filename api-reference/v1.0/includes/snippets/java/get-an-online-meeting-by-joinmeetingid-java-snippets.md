---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnlineMeetingCollectionPage onlineMeetings = graphClient.me().onlineMeetings()
	.buildRequest()
	.filter("joinMeetingIdSettings/joinMeetingId eq '1234567890'")
	.get();

```