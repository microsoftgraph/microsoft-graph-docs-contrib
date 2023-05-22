---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserCollectionPage user = graphClient.roleManagement().directory().roleDefinitions("644ef478-e28f-4e28-b9dc-3fdde9aa0b1f")
	.assignedPrincipals(UnifiedRoleDefinitionAssignedPrincipalsParameterSet
		.newBuilder()
		.withDirectoryScopeType("tenant")
		.build()).microsoft.graph.user()
	.buildRequest()
	.get();

```