---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VirtualEventWebinarGetByUserIdAndRoleCollectionPage getByUserIdAndRole = graphClient.solutions().virtualEvents().webinars()
	.getByUserIdAndRole(VirtualEventWebinarGetByUserIdAndRoleParameterSet
		.newBuilder()
		.withUserId("b7ef013a-c73c-4ec7-8ccb-e56290f45f68")
		.withRole("organizer")
		.build())
	.buildRequest()
	.get();

```