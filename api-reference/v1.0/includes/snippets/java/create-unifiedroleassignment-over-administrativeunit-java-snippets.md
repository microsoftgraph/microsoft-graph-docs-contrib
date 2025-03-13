---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignment unifiedRoleAssignment = new UnifiedRoleAssignment();
unifiedRoleAssignment.setOdataType("#microsoft.graph.unifiedRoleAssignment");
unifiedRoleAssignment.setRoleDefinitionId("fe930be7-5e62-47db-91af-98c3a49a38b1");
unifiedRoleAssignment.setPrincipalId("f8ca5a85-489a-49a0-b555-0a6d81e56f0d");
unifiedRoleAssignment.setDirectoryScopeId("/administrativeUnits/5d107bba-d8e2-4e13-b6ae-884be90e5d1a");
UnifiedRoleAssignment result = graphClient.roleManagement().directory().roleAssignments().post(unifiedRoleAssignment);


```