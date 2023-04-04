---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleEligibilityScheduleRequest unifiedRoleEligibilityScheduleRequest = new UnifiedRoleEligibilityScheduleRequest();
unifiedRoleEligibilityScheduleRequest.action = UnifiedRoleScheduleRequestActions.ADMIN_ASSIGN;
unifiedRoleEligibilityScheduleRequest.justification = "Assign Attribute Assignment Admin eligibility to restricted user";
unifiedRoleEligibilityScheduleRequest.roleDefinitionId = "8424c6f0-a189-499e-bbd0-26c1753c96d4";
unifiedRoleEligibilityScheduleRequest.directoryScopeId = "/";
unifiedRoleEligibilityScheduleRequest.principalId = "071cc716-8147-4397-a5ba-b2105951cc0b";
RequestSchedule scheduleInfo = new RequestSchedule();
scheduleInfo.startDateTime = OffsetDateTimeSerializer.deserialize("2022-04-10T00:00:00Z");
ExpirationPattern expiration = new ExpirationPattern();
expiration.type = ExpirationPatternType.AFTER_DATE_TIME;
expiration.endDateTime = OffsetDateTimeSerializer.deserialize("2024-04-10T00:00:00Z");
scheduleInfo.expiration = expiration;
unifiedRoleEligibilityScheduleRequest.scheduleInfo = scheduleInfo;

graphClient.roleManagement().directory().roleEligibilityScheduleRequests()
	.buildRequest()
	.post(unifiedRoleEligibilityScheduleRequest);

```