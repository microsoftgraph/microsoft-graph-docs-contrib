---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


result, err := graphClient.AdministrativeUnitsById("administrativeUnit-id").ScopedRoleMembersById("scopedRoleMembership-id").Get(context.Background(), nil)


```