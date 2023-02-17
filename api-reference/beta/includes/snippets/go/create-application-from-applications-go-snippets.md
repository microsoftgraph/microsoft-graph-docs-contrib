---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewApplication()
displayName := "Display name"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Applications().Post(context.Background(), requestBody, nil)


```