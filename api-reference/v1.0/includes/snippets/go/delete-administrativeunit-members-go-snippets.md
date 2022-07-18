---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

administrativeUnitId := "administrativeUnit-id"
directoryObjectId := "directoryObject-id"
graphClient.Directory().AdministrativeUnitsById(&administrativeUnitId).MembersById(&directoryObjectId).$ref().Delete()


```