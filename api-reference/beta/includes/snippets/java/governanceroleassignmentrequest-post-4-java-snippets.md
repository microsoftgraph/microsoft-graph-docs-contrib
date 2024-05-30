---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GovernanceRoleAssignmentRequest governanceRoleAssignmentRequest = new GovernanceRoleAssignmentRequest();
governanceRoleAssignmentRequest.setRoleDefinitionId("65bb4622-61f5-4f25-9d75-d0e20cf92019");
governanceRoleAssignmentRequest.setResourceId("e5e7d29d-5465-45ac-885f-4716a5ee74b5");
governanceRoleAssignmentRequest.setSubjectId("74765671-9ca4-40d7-9e36-2f4a570608a6");
governanceRoleAssignmentRequest.setAssignmentState("Eligible");
governanceRoleAssignmentRequest.setType("AdminRemove");
GovernanceRoleAssignmentRequest result = graphClient.privilegedAccess().byPrivilegedAccessId("{privilegedAccess-id}").roleAssignmentRequests().post(governanceRoleAssignmentRequest);


```