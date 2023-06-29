---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleEligibilityScheduleRequest unifiedRoleEligibilityScheduleRequest = new UnifiedRoleEligibilityScheduleRequest();
unifiedRoleEligibilityScheduleRequest.action = UnifiedRoleScheduleRequestActions.ADMIN_REMOVE;
unifiedRoleEligibilityScheduleRequest.principalId = "e77cbb23-0ff2-4e18-819c-690f58269752";
unifiedRoleEligibilityScheduleRequest.roleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1";
unifiedRoleEligibilityScheduleRequest.directoryScopeId = "/";

graphClient.roleManagement().directory().roleEligibilityScheduleRequests()
	.buildRequest()
	.post(unifiedRoleEligibilityScheduleRequest);

```