---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleEligibilityScheduleRequest unifiedRoleEligibilityScheduleRequest = new UnifiedRoleEligibilityScheduleRequest();
unifiedRoleEligibilityScheduleRequest.action = UnifiedRoleScheduleRequestActions.ADMIN_ASSIGN;
unifiedRoleEligibilityScheduleRequest.justification = "Assign User Admin eligibility to IT Helpdesk (User) group";
unifiedRoleEligibilityScheduleRequest.roleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1";
unifiedRoleEligibilityScheduleRequest.directoryScopeId = "/";
unifiedRoleEligibilityScheduleRequest.principalId = "e77cbb23-0ff2-4e18-819c-690f58269752";
RequestSchedule scheduleInfo = new RequestSchedule();
scheduleInfo.startDateTime = OffsetDateTimeSerializer.deserialize("2021-07-01T00:00:00Z");
ExpirationPattern expiration = new ExpirationPattern();
expiration.endDateTime = OffsetDateTimeSerializer.deserialize("2022-06-30T00:00:00Z");
expiration.type = ExpirationPatternType.AFTER_DATE_TIME;
scheduleInfo.expiration = expiration;
unifiedRoleEligibilityScheduleRequest.scheduleInfo = scheduleInfo;

graphClient.roleManagement().directory().roleEligibilityScheduleRequests()
	.buildRequest()
	.post(unifiedRoleEligibilityScheduleRequest);

```