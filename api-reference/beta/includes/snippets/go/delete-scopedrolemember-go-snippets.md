---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.AdministrativeUnitsById("administrativeUnit-id").ScopedRoleMembersById("scopedRoleMembership-id").Delete(context.Background(), nil)


```