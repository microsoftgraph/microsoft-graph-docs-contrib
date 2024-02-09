---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentMultiple unifiedRoleAssignmentMultiple = new UnifiedRoleAssignmentMultiple();
LinkedList<String> principalIds = new LinkedList<String>();
principalIds.add("0aeec2c1-fee7-4e02-b534-6f920d25b300");
principalIds.add("2d5386a7-732f-44db-9cf8-f82dd2a1c0e0");
unifiedRoleAssignmentMultiple.setPrincipalIds(principalIds);
UnifiedRoleAssignmentMultiple result = graphClient.roleManagement().deviceManagement().roleAssignments().byUnifiedRoleAssignmentMultipleId("{unifiedRoleAssignmentMultiple-id}").patch(unifiedRoleAssignmentMultiple);


```