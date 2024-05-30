---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleEligibilityScheduleRequest unifiedRoleEligibilityScheduleRequest = new UnifiedRoleEligibilityScheduleRequest();
unifiedRoleEligibilityScheduleRequest.setAction(UnifiedRoleScheduleRequestActions.AdminAssign);
unifiedRoleEligibilityScheduleRequest.setJustification("Assign User Admin eligibility to IT Helpdesk (User) group");
unifiedRoleEligibilityScheduleRequest.setRoleDefinitionId("fe930be7-5e62-47db-91af-98c3a49a38b1");
unifiedRoleEligibilityScheduleRequest.setDirectoryScopeId("/");
unifiedRoleEligibilityScheduleRequest.setPrincipalId("e77cbb23-0ff2-4e18-819c-690f58269752");
RequestSchedule scheduleInfo = new RequestSchedule();
OffsetDateTime startDateTime = OffsetDateTime.parse("2021-07-01T00:00:00Z");
scheduleInfo.setStartDateTime(startDateTime);
ExpirationPattern expiration = new ExpirationPattern();
OffsetDateTime endDateTime = OffsetDateTime.parse("2022-06-30T00:00:00Z");
expiration.setEndDateTime(endDateTime);
expiration.setType(ExpirationPatternType.AfterDateTime);
scheduleInfo.setExpiration(expiration);
unifiedRoleEligibilityScheduleRequest.setScheduleInfo(scheduleInfo);
UnifiedRoleEligibilityScheduleRequest result = graphClient.roleManagement().directory().roleEligibilityScheduleRequests().post(unifiedRoleEligibilityScheduleRequest);


```