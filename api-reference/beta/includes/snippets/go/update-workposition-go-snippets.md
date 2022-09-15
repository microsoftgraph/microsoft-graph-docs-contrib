---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewWorkPosition()
isCurrent := true
requestBody.SetIsCurrent(&isCurrent) 

graphClient.Me().Profile().PositionsById("workPosition-id").Patch(context.Background(), requestBody, nil)


```