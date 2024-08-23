---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignment unifiedRoleAssignment = new UnifiedRoleAssignment();
unifiedRoleAssignment.setPrincipalId("/ServicePrincipals/0451dbb9-6336-42ea-b58f-5953dc053ece");
unifiedRoleAssignment.setRoleDefinitionId("f66ab1ee-3cac-4d03-8a64-dadc56e563f8");
unifiedRoleAssignment.setDirectoryScopeId("/AdministrativeUnits/8b532c7a-4d3e-4e99-8ffa-2dfec92c62eb");
unifiedRoleAssignment.setAppScopeId(null);
UnifiedRoleAssignment result = graphClient.roleManagement().exchange().roleAssignments().post(unifiedRoleAssignment);


```