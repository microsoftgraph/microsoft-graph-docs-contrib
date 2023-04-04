---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleEligibilityScheduleRequest unifiedRoleEligibilityScheduleRequest = new UnifiedRoleEligibilityScheduleRequest();
unifiedRoleEligibilityScheduleRequest.action = "adminRemove";
unifiedRoleEligibilityScheduleRequest.roleDefinitionId = "8424c6f0-a189-499e-bbd0-26c1753c96d4";
unifiedRoleEligibilityScheduleRequest.directoryScopeId = "/";
unifiedRoleEligibilityScheduleRequest.principalId = "071cc716-8147-4397-a5ba-b2105951cc0b";

graphClient.roleManagement().directory().roleEligibilityScheduleRequests()
	.buildRequest()
	.post(unifiedRoleEligibilityScheduleRequest);

```