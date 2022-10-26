---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentScheduleRequest unifiedRoleAssignmentScheduleRequest = new UnifiedRoleAssignmentScheduleRequest();
unifiedRoleAssignmentScheduleRequest.action = UnifiedRoleScheduleRequestActions.ADMIN_ASSIGN;
unifiedRoleAssignmentScheduleRequest.justification = "Assign Groups Admin to IT Helpdesk group";
unifiedRoleAssignmentScheduleRequest.roleDefinitionId = "fdd7a751-b60b-444a-984c-02652fe8fa1c";
unifiedRoleAssignmentScheduleRequest.directoryScopeId = "/";
unifiedRoleAssignmentScheduleRequest.principalId = "071cc716-8147-4397-a5ba-b2105951cc0b";
RequestSchedule scheduleInfo = new RequestSchedule();
scheduleInfo.startDateTime = OffsetDateTimeSerializer.deserialize("2022-04-10T00:00:00Z");
ExpirationPattern expiration = new ExpirationPattern();
expiration.type = ExpirationPatternType.NO_EXPIRATION;
scheduleInfo.expiration = expiration;
unifiedRoleAssignmentScheduleRequest.scheduleInfo = scheduleInfo;

graphClient.roleManagement().directory().roleAssignmentScheduleRequests()
	.buildRequest()
	.post(unifiedRoleAssignmentScheduleRequest);

```