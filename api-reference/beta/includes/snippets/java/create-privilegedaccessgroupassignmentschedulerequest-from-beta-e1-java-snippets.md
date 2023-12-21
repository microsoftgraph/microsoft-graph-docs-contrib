---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupAssignmentScheduleRequest privilegedAccessGroupAssignmentScheduleRequest = new PrivilegedAccessGroupAssignmentScheduleRequest();
privilegedAccessGroupAssignmentScheduleRequest.accessId = PrivilegedAccessGroupRelationships.MEMBER;
privilegedAccessGroupAssignmentScheduleRequest.principalId = "3cce9d87-3986-4f19-8335-7ed075408ca2";
privilegedAccessGroupAssignmentScheduleRequest.groupId = "68e55cce-cf7e-4a2d-9046-3e4e75c4bfa7";
privilegedAccessGroupAssignmentScheduleRequest.action = ScheduleRequestActions.ADMIN_ASSIGN;
RequestSchedule scheduleInfo = new RequestSchedule();
scheduleInfo.startDateTime = OffsetDateTimeSerializer.deserialize("2022-12-08T07:43:00Z");
ExpirationPattern expiration = new ExpirationPattern();
expiration.type = ExpirationPatternType.AFTER_DURATION;
expiration.duration = DatatypeFactory.newInstance().newDuration("PT2H");
scheduleInfo.expiration = expiration;
privilegedAccessGroupAssignmentScheduleRequest.scheduleInfo = scheduleInfo;
privilegedAccessGroupAssignmentScheduleRequest.justification = "Assign active member access.";

graphClient.identityGovernance().privilegedAccess().group().assignmentScheduleRequests()
	.buildRequest()
	.post(privilegedAccessGroupAssignmentScheduleRequest);

```