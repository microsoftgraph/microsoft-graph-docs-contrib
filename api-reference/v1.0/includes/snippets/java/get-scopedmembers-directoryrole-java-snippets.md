---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ScopedRoleMembershipCollectionPage scopedMembers = graphClient.directoryRoles("43a63cc2-582b-4d81-a79d-1591f91d5558").scopedMembers()
	.buildRequest()
	.get();

```