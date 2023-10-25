---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VirtualEventWebinarGetByUserRoleCollectionPage getByUserRole = graphClient.solutions().virtualEvents().webinars()
	.getByUserRole(VirtualEventWebinarGetByUserRoleParameterSet
		.newBuilder()
		.withRole("organizer")
		.build())
	.buildRequest()
	.get();

```