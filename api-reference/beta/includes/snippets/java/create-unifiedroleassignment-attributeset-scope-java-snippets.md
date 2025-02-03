---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignment unifiedRoleAssignment = new UnifiedRoleAssignment();
unifiedRoleAssignment.setOdataType("#microsoft.graph.unifiedRoleAssignment");
unifiedRoleAssignment.setRoleDefinitionId("58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d");
unifiedRoleAssignment.setPrincipalId("f8ca5a85-489a-49a0-b555-0a6d81e56f0d");
unifiedRoleAssignment.setDirectoryScopeId("/attributeSets/Engineering");
UnifiedRoleAssignment result = graphClient.roleManagement().directory().roleAssignments().post(unifiedRoleAssignment);


```