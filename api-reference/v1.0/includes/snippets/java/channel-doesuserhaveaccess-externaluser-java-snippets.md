---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean _boolean = graphClient.teams("0fddfdc5-f319-491f-a514-be1bc1bf9ddc").channels("19:33b76eea88574bd1969dca37e2b7a819@thread.skype")
	.doesUserHaveAccess(ChannelDoesUserHaveAccessParameterSet
		.newBuilder()
		.withUserId("62855810-484b-4823-9e01-60667f8b12ae")
		.withTenantId("57fb72d0-d811-46f4-8947-305e6072eaa5")
		.build())
	.buildRequest()
	.get();

```