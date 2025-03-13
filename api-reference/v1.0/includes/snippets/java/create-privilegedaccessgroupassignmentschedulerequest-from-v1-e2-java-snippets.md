---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrivilegedAccessGroupAssignmentScheduleRequest privilegedAccessGroupAssignmentScheduleRequest = new PrivilegedAccessGroupAssignmentScheduleRequest();
privilegedAccessGroupAssignmentScheduleRequest.setAccessId(PrivilegedAccessGroupRelationships.Member);
privilegedAccessGroupAssignmentScheduleRequest.setPrincipalId("3cce9d87-3986-4f19-8335-7ed075408ca2");
privilegedAccessGroupAssignmentScheduleRequest.setGroupId("2b5ed229-4072-478d-9504-a047ebd4b07d");
privilegedAccessGroupAssignmentScheduleRequest.setAction(ScheduleRequestActions.SelfActivate);
RequestSchedule scheduleInfo = new RequestSchedule();
OffsetDateTime startDateTime = OffsetDateTime.parse("2023-02-08T07:43:00.000Z");
scheduleInfo.setStartDateTime(startDateTime);
ExpirationPattern expiration = new ExpirationPattern();
expiration.setType(ExpirationPatternType.AfterDuration);
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("PT2H"));
expiration.setDuration(duration);
scheduleInfo.setExpiration(expiration);
privilegedAccessGroupAssignmentScheduleRequest.setScheduleInfo(scheduleInfo);
privilegedAccessGroupAssignmentScheduleRequest.setJustification("Activate assignment.");
PrivilegedAccessGroupAssignmentScheduleRequest result = graphClient.identityGovernance().privilegedAccess().group().assignmentScheduleRequests().post(privilegedAccessGroupAssignmentScheduleRequest);


```