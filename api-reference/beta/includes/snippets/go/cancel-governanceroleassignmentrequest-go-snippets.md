---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.PrivilegedAccessById("privilegedAccess-id").RoleAssignmentRequestsById("governanceRoleAssignmentRequest-id").Cancel().Post(context.Background(), nil)


```