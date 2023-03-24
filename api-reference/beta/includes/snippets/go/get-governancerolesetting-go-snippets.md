---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.PrivilegedAccessById("privilegedAccess-id").RoleSettingsById("governanceRoleSetting-id").Get(context.Background(), nil)


```