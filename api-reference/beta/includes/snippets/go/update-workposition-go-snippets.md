---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewWorkPosition()
isCurrent := true
requestBody.SetIsCurrent(&isCurrent) 

result, err := graphClient.Me().Profile().PositionsById("workPosition-id").Patch(context.Background(), requestBody, nil)


```