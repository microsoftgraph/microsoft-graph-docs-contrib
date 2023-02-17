---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentScheduleRequest unifiedRoleAssignmentScheduleRequest = new UnifiedRoleAssignmentScheduleRequest();
unifiedRoleAssignmentScheduleRequest.action = UnifiedRoleScheduleRequestActions.SELF_ACTIVATE;
unifiedRoleAssignmentScheduleRequest.principalId = "7146daa8-1b4b-4a66-b2f7-cf593d03c8d2";
unifiedRoleAssignmentScheduleRequest.roleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1";
unifiedRoleAssignmentScheduleRequest.directoryScopeId = "/";
unifiedRoleAssignmentScheduleRequest.justification = "Need to invalidate all app refresh tokens for Contoso users.";
RequestSchedule scheduleInfo = new RequestSchedule();
scheduleInfo.startDateTime = OffsetDateTimeSerializer.deserialize("2021-09-04T15:13:00Z");
ExpirationPattern expiration = new ExpirationPattern();
expiration.type = ExpirationPatternType.AFTER_DURATION;
expiration.duration = DatatypeFactory.newInstance().newDuration("PT5H");
scheduleInfo.expiration = expiration;
unifiedRoleAssignmentScheduleRequest.scheduleInfo = scheduleInfo;
TicketInfo ticketInfo = new TicketInfo();
ticketInfo.ticketNumber = "CONTOSO:Security-012345";
ticketInfo.ticketSystem = "Contoso ICM";
unifiedRoleAssignmentScheduleRequest.ticketInfo = ticketInfo;

graphClient.roleManagement().directory().roleAssignmentScheduleRequests()
	.buildRequest()
	.post(unifiedRoleAssignmentScheduleRequest);

```