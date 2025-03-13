---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentMultiple unifiedRoleAssignmentMultiple = new UnifiedRoleAssignmentMultiple();
unifiedRoleAssignmentMultiple.setOdataType("#microsoft.graph.unifiedRoleAssignmentMultiple");
unifiedRoleAssignmentMultiple.setDisplayName("My test role assignment 1");
unifiedRoleAssignmentMultiple.setRoleDefinitionId("c2cf284d-6c41-4e6b-afac-4b80928c9034");
LinkedList<String> principalIds = new LinkedList<String>();
principalIds.add("f8ca5a85-489a-49a0-b555-0a6d81e56f0d");
principalIds.add("c1518aa9-4da5-4c84-a902-a31404023890");
unifiedRoleAssignmentMultiple.setPrincipalIds(principalIds);
LinkedList<String> directoryScopeIds = new LinkedList<String>();
directoryScopeIds.add("28ca5a85-489a-49a0-b555-0a6d81e56f0d");
directoryScopeIds.add("8152656a-cf9a-4928-a457-1512d4cae295");
unifiedRoleAssignmentMultiple.setDirectoryScopeIds(directoryScopeIds);
UnifiedRoleAssignmentMultiple result = graphClient.roleManagement().deviceManagement().roleAssignments().post(unifiedRoleAssignmentMultiple);


```