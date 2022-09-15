---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Directory().AdministrativeUnitsById("administrativeUnit-id").ScopedRoleMembersById("scopedRoleMembership-id").Delete(context.Background(), nil)


```