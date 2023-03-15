---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignment unifiedRoleAssignment = new UnifiedRoleAssignment();
unifiedRoleAssignment.roleDefinitionId = "58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d";
unifiedRoleAssignment.principalId = "f8ca5a85-489a-49a0-b555-0a6d81e56f0d";
unifiedRoleAssignment.directoryScopeId = "/attributeSets/Engineering";

graphClient.roleManagement().directory().roleAssignments()
	.buildRequest()
	.post(unifiedRoleAssignment);

```