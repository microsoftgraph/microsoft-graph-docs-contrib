---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GovernanceRoleAssignmentRequest governanceRoleAssignmentRequest = new GovernanceRoleAssignmentRequest();
governanceRoleAssignmentRequest.setRoleDefinitionId("bc75b4e6-7403-4243-bf2f-d1f6990be122");
governanceRoleAssignmentRequest.setResourceId("fb016e3a-c3ed-4d9d-96b6-a54cd4f0b735");
governanceRoleAssignmentRequest.setSubjectId("918e54be-12c4-4f4c-a6d3-2ee0e3661c51");
governanceRoleAssignmentRequest.setAssignmentState("Active");
governanceRoleAssignmentRequest.setType("UserRemove");
governanceRoleAssignmentRequest.setReason("Deactivate the role");
governanceRoleAssignmentRequest.setLinkedEligibleRoleAssignmentId("cb8a533e-02d5-42ad-8499-916b1e4822ec");
GovernanceRoleAssignmentRequest result = graphClient.privilegedAccess().byPrivilegedAccessId("{privilegedAccess-id}").roleAssignmentRequests().post(governanceRoleAssignmentRequest);


```