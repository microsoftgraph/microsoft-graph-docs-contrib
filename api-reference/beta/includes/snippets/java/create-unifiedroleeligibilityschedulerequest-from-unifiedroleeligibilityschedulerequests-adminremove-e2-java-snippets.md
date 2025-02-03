---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleEligibilityScheduleRequest unifiedRoleEligibilityScheduleRequest = new UnifiedRoleEligibilityScheduleRequest();
unifiedRoleEligibilityScheduleRequest.setAction("AdminRemove");
unifiedRoleEligibilityScheduleRequest.setJustification("Assign User Admin eligibility to IT Helpdesk (User) group");
unifiedRoleEligibilityScheduleRequest.setRoleDefinitionId("fdd7a751-b60b-444a-984c-02652fe8fa1c");
unifiedRoleEligibilityScheduleRequest.setDirectoryScopeId("/");
unifiedRoleEligibilityScheduleRequest.setPrincipalId("07706ff1-46c7-4847-ae33-3003830675a1");
RequestSchedule scheduleInfo = new RequestSchedule();
OffsetDateTime startDateTime = OffsetDateTime.parse("2021-07-26T18:08:06.2081758Z");
scheduleInfo.setStartDateTime(startDateTime);
ExpirationPattern expiration = new ExpirationPattern();
OffsetDateTime endDateTime = OffsetDateTime.parse("2022-06-30T00:00:00Z");
expiration.setEndDateTime(endDateTime);
expiration.setType(ExpirationPatternType.AfterDateTime);
scheduleInfo.setExpiration(expiration);
unifiedRoleEligibilityScheduleRequest.setScheduleInfo(scheduleInfo);
UnifiedRoleEligibilityScheduleRequest result = graphClient.roleManagement().directory().roleEligibilityScheduleRequests().post(unifiedRoleEligibilityScheduleRequest);


```