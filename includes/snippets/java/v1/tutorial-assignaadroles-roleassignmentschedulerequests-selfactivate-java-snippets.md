---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentScheduleRequest unifiedRoleAssignmentScheduleRequest = new UnifiedRoleAssignmentScheduleRequest();
unifiedRoleAssignmentScheduleRequest.setAction(UnifiedRoleScheduleRequestActions.SelfActivate);
unifiedRoleAssignmentScheduleRequest.setPrincipalId("7146daa8-1b4b-4a66-b2f7-cf593d03c8d2");
unifiedRoleAssignmentScheduleRequest.setRoleDefinitionId("fe930be7-5e62-47db-91af-98c3a49a38b1");
unifiedRoleAssignmentScheduleRequest.setDirectoryScopeId("/");
unifiedRoleAssignmentScheduleRequest.setJustification("Need to invalidate all app refresh tokens for Contoso users.");
RequestSchedule scheduleInfo = new RequestSchedule();
OffsetDateTime startDateTime = OffsetDateTime.parse("2021-09-04T15:13:00.000Z");
scheduleInfo.setStartDateTime(startDateTime);
ExpirationPattern expiration = new ExpirationPattern();
expiration.setType(ExpirationPatternType.AfterDuration);
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("PT5H"));
expiration.setDuration(duration);
scheduleInfo.setExpiration(expiration);
unifiedRoleAssignmentScheduleRequest.setScheduleInfo(scheduleInfo);
TicketInfo ticketInfo = new TicketInfo();
ticketInfo.setTicketNumber("CONTOSO:Security-012345");
ticketInfo.setTicketSystem("Contoso ICM");
unifiedRoleAssignmentScheduleRequest.setTicketInfo(ticketInfo);
UnifiedRoleAssignmentScheduleRequest result = graphClient.roleManagement().directory().roleAssignmentScheduleRequests().post(unifiedRoleAssignmentScheduleRequest);


```