---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleEligibilityScheduleRequest unifiedRoleEligibilityScheduleRequest = new UnifiedRoleEligibilityScheduleRequest();
unifiedRoleEligibilityScheduleRequest.setAction(UnifiedRoleScheduleRequestActions.AdminRemove);
unifiedRoleEligibilityScheduleRequest.setRoleDefinitionId("8424c6f0-a189-499e-bbd0-26c1753c96d4");
unifiedRoleEligibilityScheduleRequest.setDirectoryScopeId("/");
unifiedRoleEligibilityScheduleRequest.setPrincipalId("071cc716-8147-4397-a5ba-b2105951cc0b");
UnifiedRoleEligibilityScheduleRequest result = graphClient.roleManagement().directory().roleEligibilityScheduleRequests().post(unifiedRoleEligibilityScheduleRequest);


```