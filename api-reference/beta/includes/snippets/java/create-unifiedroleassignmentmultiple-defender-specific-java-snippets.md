---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentMultiple unifiedRoleAssignmentMultiple = new UnifiedRoleAssignmentMultiple();
unifiedRoleAssignmentMultiple.setOdataType("#microsoft.graph.unifiedRoleAssignmentMultiple");
unifiedRoleAssignmentMultiple.setDisplayName("Example role assignment");
unifiedRoleAssignmentMultiple.setRoleDefinitionId("b5c08161-a7af-481c-ace2-a20a69a48fb1");
LinkedList<String> principalIds = new LinkedList<String>();
principalIds.add("8e811502-ebda-4782-8f81-071d17f0f892");
principalIds.add("30e3492f-964c-4d73-88c6-986a53c6e2a0");
unifiedRoleAssignmentMultiple.setPrincipalIds(principalIds);
LinkedList<String> appScopeIds = new LinkedList<String>();
appScopeIds.add("Mdc");
appScopeIds.add("/CloudSet/123");
unifiedRoleAssignmentMultiple.setAppScopeIds(appScopeIds);
UnifiedRoleAssignmentMultiple result = graphClient.roleManagement().defender().roleAssignments().post(unifiedRoleAssignmentMultiple);


```