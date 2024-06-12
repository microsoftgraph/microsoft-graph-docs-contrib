---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageAssignmentRequest accessPackageAssignmentRequest = new AccessPackageAssignmentRequest();
accessPackageAssignmentRequest.setOdataType("#microsoft.graph.accessPackageAssignmentRequest");
accessPackageAssignmentRequest.setRequestType(AccessPackageRequestType.AdminUpdate);
EntitlementManagementSchedule schedule = new EntitlementManagementSchedule();
OffsetDateTime startDateTime = OffsetDateTime.parse("2023-05-23T20:04:02.39Z");
schedule.setStartDateTime(startDateTime);
schedule.setRecurrence(null);
ExpirationPattern expiration = new ExpirationPattern();
OffsetDateTime endDateTime = OffsetDateTime.parse("2024-07-01T00:00:00.00Z");
expiration.setEndDateTime(endDateTime);
expiration.setDuration(null);
expiration.setType(ExpirationPatternType.AfterDateTime);
schedule.setExpiration(expiration);
accessPackageAssignmentRequest.setSchedule(schedule);
AccessPackageAssignment assignment = new AccessPackageAssignment();
assignment.setId("329f8dac-8062-4c1b-a9b8-39b7132f9bff");
accessPackageAssignmentRequest.setAssignment(assignment);
AccessPackageAssignmentRequest result = graphClient.identityGovernance().entitlementManagement().assignmentRequests().post(accessPackageAssignmentRequest);


```