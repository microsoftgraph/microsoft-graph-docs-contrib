---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewProgram()
displayName := "testprogram3 new name"
requestBody.SetDisplayName(&displayName) 

graphClient.ProgramsById("program-id").Patch(context.Background(), requestBody, nil)


```