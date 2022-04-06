---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleEligibilityScheduleRequest unifiedRoleEligibilityScheduleRequest = new UnifiedRoleEligibilityScheduleRequest();
unifiedRoleEligibilityScheduleRequest.action = "AdminAssign";
unifiedRoleEligibilityScheduleRequest.justification = "Assign User Admin eligibility to IT Helpdesk (User) group";
unifiedRoleEligibilityScheduleRequest.roleDefinitionId = "fdd7a751-b60b-444a-984c-02652fe8fa1c";
unifiedRoleEligibilityScheduleRequest.directoryScopeId = "/";
unifiedRoleEligibilityScheduleRequest.principalId = "07706ff1-46c7-4847-ae33-3003830675a1";
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