---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewProgram()
displayName := "testprogram3 new name"
requestBody.SetDisplayName(&displayName)
programId := "program-id"
graphClient.ProgramsById(&programId).Patch(requestBody)


```