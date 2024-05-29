---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrivilegedAccessGroupEligibilityScheduleRequest privilegedAccessGroupEligibilityScheduleRequest = new PrivilegedAccessGroupEligibilityScheduleRequest();
privilegedAccessGroupEligibilityScheduleRequest.setAccessId(PrivilegedAccessGroupRelationships.Member);
privilegedAccessGroupEligibilityScheduleRequest.setPrincipalId("3cce9d87-3986-4f19-8335-7ed075408ca2");
privilegedAccessGroupEligibilityScheduleRequest.setGroupId("2b5ed229-4072-478d-9504-a047ebd4b07d");
privilegedAccessGroupEligibilityScheduleRequest.setAction(ScheduleRequestActions.AdminAssign);
RequestSchedule scheduleInfo = new RequestSchedule();
OffsetDateTime startDateTime = OffsetDateTime.parse("2023-02-06T19:25:00.000Z");
scheduleInfo.setStartDateTime(startDateTime);
ExpirationPattern expiration = new ExpirationPattern();
expiration.setType(ExpirationPatternType.AfterDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2023-02-07T19:56:00.000Z");
expiration.setEndDateTime(endDateTime);
scheduleInfo.setExpiration(expiration);
privilegedAccessGroupEligibilityScheduleRequest.setScheduleInfo(scheduleInfo);
privilegedAccessGroupEligibilityScheduleRequest.setJustification("Assign eligible request.");
PrivilegedAccessGroupEligibilityScheduleRequest result = graphClient.identityGovernance().privilegedAccess().group().eligibilityScheduleRequests().post(privilegedAccessGroupEligibilityScheduleRequest);


```