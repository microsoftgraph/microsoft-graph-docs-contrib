---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.RoleManagement().DeviceManagement().RoleAssignmentsById("unifiedRoleAssignmentMultiple-id").Delete(context.Background(), nil)


```