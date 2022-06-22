---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

privilegedAccessId := "privilegedAccess-id"
governanceRoleAssignmentRequestId := "governanceRoleAssignmentRequest-id"
graphClient.PrivilegedAccessById(&privilegedAccessId).RoleAssignmentRequestsById(&governanceRoleAssignmentRequestId).Cancel(privilegedAccess-id, governanceRoleAssignmentRequest-id).Post()


```