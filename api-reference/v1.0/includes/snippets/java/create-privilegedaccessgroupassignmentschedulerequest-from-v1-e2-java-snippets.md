---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupAssignmentScheduleRequest privilegedAccessGroupAssignmentScheduleRequest = new PrivilegedAccessGroupAssignmentScheduleRequest();
privilegedAccessGroupAssignmentScheduleRequest.accessId = PrivilegedAccessGroupRelationships.MEMBER;
privilegedAccessGroupAssignmentScheduleRequest.principalId = "3cce9d87-3986-4f19-8335-7ed075408ca2";
privilegedAccessGroupAssignmentScheduleRequest.groupId = "2b5ed229-4072-478d-9504-a047ebd4b07d";
privilegedAccessGroupAssignmentScheduleRequest.action = ScheduleRequestActions.SELF_ACTIVATE;
RequestSchedule scheduleInfo = new RequestSchedule();
scheduleInfo.startDateTime = OffsetDateTimeSerializer.deserialize("2023-02-08T07:43:00Z");
ExpirationPattern expiration = new ExpirationPattern();
expiration.type = ExpirationPatternType.AFTER_DURATION;
expiration.duration = DatatypeFactory.newInstance().newDuration("PT2H");
scheduleInfo.expiration = expiration;
privilegedAccessGroupAssignmentScheduleRequest.scheduleInfo = scheduleInfo;
privilegedAccessGroupAssignmentScheduleRequest.justification = "Activate assignment.";

graphClient.identityGovernance().privilegedAccess().group().assignmentScheduleRequests()
	.buildRequest()
	.post(privilegedAccessGroupAssignmentScheduleRequest);

```