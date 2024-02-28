---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GovernanceRoleAssignmentRequest governanceRoleAssignmentRequest = new GovernanceRoleAssignmentRequest();
governanceRoleAssignmentRequest.setRoleDefinitionId("0e88fd18-50f5-4ee1-9104-01c3ed910065");
governanceRoleAssignmentRequest.setResourceId("e5e7d29d-5465-45ac-885f-4716a5ee74b5");
governanceRoleAssignmentRequest.setSubjectId("74765671-9ca4-40d7-9e36-2f4a570608a6");
governanceRoleAssignmentRequest.setAssignmentState("Eligible");
governanceRoleAssignmentRequest.setType("AdminExtend");
governanceRoleAssignmentRequest.setReason("extend role assignment");
GovernanceSchedule schedule = new GovernanceSchedule();
schedule.setType("Once");
OffsetDateTime startDateTime = OffsetDateTime.parse("2018-05-12T23:53:55.327Z");
schedule.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2018-08-10T23:53:55.327Z");
schedule.setEndDateTime(endDateTime);
governanceRoleAssignmentRequest.setSchedule(schedule);
GovernanceRoleAssignmentRequest result = graphClient.privilegedAccess().byPrivilegedAccessId("{privilegedAccess-id}").roleAssignmentRequests().post(governanceRoleAssignmentRequest);


```