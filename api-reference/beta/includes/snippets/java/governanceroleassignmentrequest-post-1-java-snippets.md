---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GovernanceRoleAssignmentRequest governanceRoleAssignmentRequest = new GovernanceRoleAssignmentRequest();
governanceRoleAssignmentRequest.setRoleDefinitionId("ea48ad5e-e3b0-4d10-af54-39a45bbfe68d");
governanceRoleAssignmentRequest.setResourceId("e5e7d29d-5465-45ac-885f-4716a5ee74b5");
governanceRoleAssignmentRequest.setSubjectId("918e54be-12c4-4f4c-a6d3-2ee0e3661c51");
governanceRoleAssignmentRequest.setAssignmentState("Eligible");
governanceRoleAssignmentRequest.setType("AdminAdd");
governanceRoleAssignmentRequest.setReason("Assign an eligible role");
GovernanceSchedule schedule = new GovernanceSchedule();
OffsetDateTime startDateTime = OffsetDateTime.parse("2018-05-12T23:37:43.356Z");
schedule.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2018-11-08T23:37:43.356Z");
schedule.setEndDateTime(endDateTime);
schedule.setType("Once");
governanceRoleAssignmentRequest.setSchedule(schedule);
GovernanceRoleAssignmentRequest result = graphClient.privilegedAccess().byPrivilegedAccessId("{privilegedAccess-id}").roleAssignmentRequests().post(governanceRoleAssignmentRequest);


```