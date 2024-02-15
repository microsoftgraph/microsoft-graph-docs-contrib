---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GovernanceRoleAssignmentRequest governanceRoleAssignmentRequest = new GovernanceRoleAssignmentRequest();
governanceRoleAssignmentRequest.setRoleDefinitionId("8b4d1d51-08e9-4254-b0a6-b16177aae376");
governanceRoleAssignmentRequest.setResourceId("e5e7d29d-5465-45ac-885f-4716a5ee74b5");
governanceRoleAssignmentRequest.setSubjectId("918e54be-12c4-4f4c-a6d3-2ee0e3661c51");
governanceRoleAssignmentRequest.setAssignmentState("Active");
governanceRoleAssignmentRequest.setType("UserAdd");
governanceRoleAssignmentRequest.setReason("Activate the owner role");
GovernanceSchedule schedule = new GovernanceSchedule();
schedule.setType("Once");
OffsetDateTime startDateTime = OffsetDateTime.parse("2018-05-12T23:28:43.537Z");
schedule.setStartDateTime(startDateTime);
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("PT9H"));
schedule.setDuration(duration);
governanceRoleAssignmentRequest.setSchedule(schedule);
governanceRoleAssignmentRequest.setLinkedEligibleRoleAssignmentId("e327f4be-42a0-47a2-8579-0a39b025b394");
GovernanceRoleAssignmentRequest result = graphClient.privilegedAccess().byPrivilegedAccessId("{privilegedAccess-id}").roleAssignmentRequests().post(governanceRoleAssignmentRequest);


```