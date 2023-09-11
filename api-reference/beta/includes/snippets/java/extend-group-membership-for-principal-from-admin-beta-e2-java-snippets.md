---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedAccessGroupEligibilityScheduleRequest privilegedAccessGroupEligibilityScheduleRequest = new PrivilegedAccessGroupEligibilityScheduleRequest();
privilegedAccessGroupEligibilityScheduleRequest.accessId = PrivilegedAccessGroupRelationships.MEMBER;
privilegedAccessGroupEligibilityScheduleRequest.principalId = "3cce9d87-3986-4f19-8335-7ed075408ca2";
privilegedAccessGroupEligibilityScheduleRequest.groupId = "2b5ed229-4072-478d-9504-a047ebd4b07d";
privilegedAccessGroupEligibilityScheduleRequest.action = ScheduleRequestActions.ADMIN_EXTEND;
RequestSchedule scheduleInfo = new RequestSchedule();
scheduleInfo.startDateTime = OffsetDateTimeSerializer.deserialize("2023-02-06T19:25:00Z");
ExpirationPattern expiration = new ExpirationPattern();
expiration.type = ExpirationPatternType.AFTER_DATE_TIME;
expiration.endDateTime = OffsetDateTimeSerializer.deserialize("2023-02-07T20:56:00Z");
scheduleInfo.expiration = expiration;
privilegedAccessGroupEligibilityScheduleRequest.scheduleInfo = scheduleInfo;
privilegedAccessGroupEligibilityScheduleRequest.justification = "Extend eligible request.";

graphClient.identityGovernance().privilegedAccess().group().eligibilityScheduleRequests()
	.buildRequest()
	.post(privilegedAccessGroupEligibilityScheduleRequest);

```