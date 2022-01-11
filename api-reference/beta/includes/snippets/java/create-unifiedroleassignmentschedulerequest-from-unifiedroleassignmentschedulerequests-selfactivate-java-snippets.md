---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleAssignmentScheduleRequest unifiedRoleAssignmentScheduleRequest = new UnifiedRoleAssignmentScheduleRequest();
unifiedRoleAssignmentScheduleRequest.action = "SelfActivate";
unifiedRoleAssignmentScheduleRequest.principalId = "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f";
unifiedRoleAssignmentScheduleRequest.roleDefinitionId = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3";
unifiedRoleAssignmentScheduleRequest.directoryScopeId = "/";
unifiedRoleAssignmentScheduleRequest.justification = "Need to update app roles for selected apps.";
RequestSchedule scheduleInfo = new RequestSchedule();
scheduleInfo.startDateTime = OffsetDateTimeSerializer.deserialize("2021-08-17T17:40:00Z");
ExpirationPattern expiration = new ExpirationPattern();
expiration.type = ExpirationPatternType.AFTER_DURATION;
expiration.duration = DatatypeFactory.newInstance().newDuration("PT5H");
scheduleInfo.expiration = expiration;
unifiedRoleAssignmentScheduleRequest.scheduleInfo = scheduleInfo;
TicketInfo ticketInfo = new TicketInfo();
ticketInfo.ticketNumber = "CONTOSO:Normal-67890";
ticketInfo.ticketSystem = "MS Project";
unifiedRoleAssignmentScheduleRequest.ticketInfo = ticketInfo;

graphClient.roleManagement().directory().roleAssignmentScheduleRequests()
	.buildRequest()
	.post(unifiedRoleAssignmentScheduleRequest);

```