---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentScheduleRequest result = graphClient.roleManagement().directory().roleAssignmentScheduleRequests().byUnifiedRoleAssignmentScheduleRequestId("{unifiedRoleAssignmentScheduleRequest-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"principalId", "action", "roleDefinitionId"};
	requestConfiguration.queryParameters.expand = new String []{"roleDefinition", "activatedUsing", "principal", "targetSchedule"};
});


```