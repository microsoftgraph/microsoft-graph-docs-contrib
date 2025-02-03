---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignment unifiedRoleAssignment = new UnifiedRoleAssignment();
unifiedRoleAssignment.setOdataType("#microsoft.graph.unifiedRoleAssignment");
unifiedRoleAssignment.setPrincipalId("6b937a9d-c731-465b-a844-2d5b5368c161");
unifiedRoleAssignment.setRoleDefinitionId("9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3");
unifiedRoleAssignment.setDirectoryScopeId("/661e1310-bd76-4795-89a7-8f3c8f855bfc");
UnifiedRoleAssignment result = graphClient.roleManagement().directory().roleAssignments().post(unifiedRoleAssignment);


```