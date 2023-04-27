---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleDefinitionAssignedPrincipalsCollectionPage assignedPrincipals = graphClient.roleManagement().directory().roleDefinitions("644ef478-e28f-4e28-b9dc-3fdde9aa0b1f")
	.assignedPrincipals(UnifiedRoleDefinitionAssignedPrincipalsParameterSet
		.newBuilder()
		.withDirectoryScopeType("administrativeUnit")
		.withDirectoryScopeId("d0c2e067-9ae9-4dbf-a280-51a51c46f432")
		.build())
	.buildRequest()
	.get();

```