---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentMultiple unifiedRoleAssignmentMultiple = new UnifiedRoleAssignmentMultiple();
unifiedRoleAssignmentMultiple.setOdataType("#microsoft.graph.unifiedRoleAssignmentMultiple");
unifiedRoleAssignmentMultiple.setDisplayName("My test role assignment 1");
unifiedRoleAssignmentMultiple.setDescription("My role assignment description");
unifiedRoleAssignmentMultiple.setRoleDefinitionId("b5c08161-a7af-481c-ace2-a20a69a48fb1");
LinkedList<String> principalIds = new LinkedList<String>();
principalIds.add("f8ca5a85-489a-49a0-b555-0a6d81e56f0d");
principalIds.add("c1518aa9-4da5-4c84-a902-a31404023890");
unifiedRoleAssignmentMultiple.setPrincipalIds(principalIds);
UnifiedRoleAssignmentMultiple result = graphClient.roleManagement().cloudPC().roleAssignments().post(unifiedRoleAssignmentMultiple);


```