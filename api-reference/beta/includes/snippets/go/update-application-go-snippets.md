---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewApplication()
displayName := "New display name"
requestBody.SetDisplayName(&displayName) 

graphClient.ApplicationsById("application-id").Patch(requestBody)


```