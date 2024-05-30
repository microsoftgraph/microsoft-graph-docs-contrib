---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrivilegedAccessGroupAssignmentScheduleRequest privilegedAccessGroupAssignmentScheduleRequest = new PrivilegedAccessGroupAssignmentScheduleRequest();
privilegedAccessGroupAssignmentScheduleRequest.setAccessId(PrivilegedAccessGroupRelationships.Member);
privilegedAccessGroupAssignmentScheduleRequest.setPrincipalId("3cce9d87-3986-4f19-8335-7ed075408ca2");
privilegedAccessGroupAssignmentScheduleRequest.setGroupId("68e55cce-cf7e-4a2d-9046-3e4e75c4bfa7");
privilegedAccessGroupAssignmentScheduleRequest.setAction(ScheduleRequestActions.AdminAssign);
RequestSchedule scheduleInfo = new RequestSchedule();
OffsetDateTime startDateTime = OffsetDateTime.parse("2022-12-08T07:43:00.000Z");
scheduleInfo.setStartDateTime(startDateTime);
ExpirationPattern expiration = new ExpirationPattern();
expiration.setType(ExpirationPatternType.AfterDuration);
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("PT2H"));
expiration.setDuration(duration);
scheduleInfo.setExpiration(expiration);
privilegedAccessGroupAssignmentScheduleRequest.setScheduleInfo(scheduleInfo);
privilegedAccessGroupAssignmentScheduleRequest.setJustification("Assign active member access.");
PrivilegedAccessGroupAssignmentScheduleRequest result = graphClient.identityGovernance().privilegedAccess().group().assignmentScheduleRequests().post(privilegedAccessGroupAssignmentScheduleRequest);


```