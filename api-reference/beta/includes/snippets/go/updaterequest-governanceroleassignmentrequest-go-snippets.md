---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

privilegedAccessId := "privilegedAccess-id"
governanceRoleAssignmentRequestId := "governanceRoleAssignmentRequest-id"
result, err := graphClient.PrivilegedAccessById(&privilegedAccessId).RoleAssignmentRequestsById(&governanceRoleAssignmentRequestId).UpdateRequest(privilegedAccess-id, governanceRoleAssignmentRequest-id).Post()


```