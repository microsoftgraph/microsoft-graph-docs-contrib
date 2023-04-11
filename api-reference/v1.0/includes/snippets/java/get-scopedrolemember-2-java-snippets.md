---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ScopedRoleMembershipCollectionPage scopedRoleMembers = graphClient.directory().administrativeUnits("8a07f5a8-edc9-4847-bbf2-dde106594bf4").scopedRoleMembers()
	.buildRequest()
	.get();

```