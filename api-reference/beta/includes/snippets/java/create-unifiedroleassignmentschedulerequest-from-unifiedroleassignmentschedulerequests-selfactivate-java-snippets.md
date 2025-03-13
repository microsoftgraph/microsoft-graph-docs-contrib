---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleAssignmentScheduleRequest unifiedRoleAssignmentScheduleRequest = new UnifiedRoleAssignmentScheduleRequest();
unifiedRoleAssignmentScheduleRequest.setAction("SelfActivate");
unifiedRoleAssignmentScheduleRequest.setPrincipalId("c6ad1942-4afa-47f8-8d48-afb5d8d69d2f");
unifiedRoleAssignmentScheduleRequest.setRoleDefinitionId("9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3");
unifiedRoleAssignmentScheduleRequest.setDirectoryScopeId("/");
unifiedRoleAssignmentScheduleRequest.setJustification("Need to update app roles for selected apps.");
RequestSchedule scheduleInfo = new RequestSchedule();
OffsetDateTime startDateTime = OffsetDateTime.parse("2021-08-17T17:40:00.000Z");
scheduleInfo.setStartDateTime(startDateTime);
ExpirationPattern expiration = new ExpirationPattern();
expiration.setType(ExpirationPatternType.AfterDuration);
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("PT5H"));
expiration.setDuration(duration);
scheduleInfo.setExpiration(expiration);
unifiedRoleAssignmentScheduleRequest.setScheduleInfo(scheduleInfo);
TicketInfo ticketInfo = new TicketInfo();
ticketInfo.setTicketNumber("CONTOSO:Normal-67890");
ticketInfo.setTicketSystem("MS Project");
unifiedRoleAssignmentScheduleRequest.setTicketInfo(ticketInfo);
UnifiedRoleAssignmentScheduleRequest result = graphClient.roleManagement().directory().roleAssignmentScheduleRequests().post(unifiedRoleAssignmentScheduleRequest);


```