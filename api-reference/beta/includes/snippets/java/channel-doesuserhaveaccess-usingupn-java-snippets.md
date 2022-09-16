---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean _boolean = graphClient.teams("0fddfdc5-f319-491f-a514-be1bc1bf9ddc").channels("19:33b76eea88574bd1969dca37e2b7a819@thread.skype")
	.doesUserHaveAccess(ChannelDoesUserHaveAccessParameterSet
		.newBuilder()
		.withUserPrincipalName("john.doe@contoso.com")
		.build())
	.buildRequest()
	.get();

```