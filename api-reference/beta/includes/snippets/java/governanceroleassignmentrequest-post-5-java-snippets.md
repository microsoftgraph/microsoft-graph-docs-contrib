---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GovernanceRoleAssignmentRequest governanceRoleAssignmentRequest = new GovernanceRoleAssignmentRequest();
governanceRoleAssignmentRequest.setRoleDefinitionId("70521f3e-3b95-4e51-b4d2-a2f485b02103");
governanceRoleAssignmentRequest.setResourceId("e5e7d29d-5465-45ac-885f-4716a5ee74b5");
governanceRoleAssignmentRequest.setSubjectId("1566d11d-d2b6-444a-a8de-28698682c445");
governanceRoleAssignmentRequest.setAssignmentState("Eligible");
governanceRoleAssignmentRequest.setType("AdminUpdate");
GovernanceSchedule schedule = new GovernanceSchedule();
schedule.setType("Once");
OffsetDateTime startDateTime = OffsetDateTime.parse("2018-03-08T05:42:45.317Z");
schedule.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2018-06-05T05:42:31.000Z");
schedule.setEndDateTime(endDateTime);
governanceRoleAssignmentRequest.setSchedule(schedule);
GovernanceRoleAssignmentRequest result = graphClient.privilegedAccess().byPrivilegedAccessId("{privilegedAccess-id}").roleAssignmentRequests().post(governanceRoleAssignmentRequest);


```