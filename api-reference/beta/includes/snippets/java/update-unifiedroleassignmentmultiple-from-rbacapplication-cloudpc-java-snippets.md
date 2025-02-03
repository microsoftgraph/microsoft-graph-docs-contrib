---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentMultiple unifiedRoleAssignmentMultiple = new UnifiedRoleAssignmentMultiple();
unifiedRoleAssignmentMultiple.setDisplayName("NewName");
unifiedRoleAssignmentMultiple.setDescription("A new roleAssignment");
UnifiedRoleAssignmentMultiple result = graphClient.roleManagement().cloudPC().roleAssignments().byUnifiedRoleAssignmentMultipleId("{unifiedRoleAssignmentMultiple-id}").patch(unifiedRoleAssignmentMultiple);


```