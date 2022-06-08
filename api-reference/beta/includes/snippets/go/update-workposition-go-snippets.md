---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewWorkPosition()
isCurrent := true
requestBody.SetIsCurrent(&isCurrent)
workPositionId := "workPosition-id"
graphClient.Me().Profile().PositionsById(&workPositionId).Patch(requestBody)


```