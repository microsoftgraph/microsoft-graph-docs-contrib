---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignment unifiedRoleAssignment = new UnifiedRoleAssignment();
unifiedRoleAssignment.setOdataType("#microsoft.graph.unifiedRoleAssignment");
unifiedRoleAssignment.setRoleDefinitionId("c2cf284d-6c41-4e6b-afac-4b80928c9034");
unifiedRoleAssignment.setPrincipalId("f8ca5a85-489a-49a0-b555-0a6d81e56f0d");
unifiedRoleAssignment.setDirectoryScopeId("/");
UnifiedRoleAssignment result = graphClient.roleManagement().directory().roleAssignments().post(unifiedRoleAssignment);


```