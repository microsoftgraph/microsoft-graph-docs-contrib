---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignment unifiedRoleAssignment = new UnifiedRoleAssignment();
unifiedRoleAssignment.setPrincipalId("679a9213-c497-48a4-830a-8d3d25d94ddc");
unifiedRoleAssignment.setRoleDefinitionId("ae79f266-94d4-4dab-b730-feca7e132178");
unifiedRoleAssignment.setAppScopeId("/AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997");
UnifiedRoleAssignment result = graphClient.roleManagement().entitlementManagement().roleAssignments().post(unifiedRoleAssignment);


```