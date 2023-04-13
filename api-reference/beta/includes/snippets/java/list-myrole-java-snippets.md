---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MyRoleCollectionPage myRoles = graphClient.tenantRelationships().managedTenants().myRoles()
	.buildRequest()
	.get();

```