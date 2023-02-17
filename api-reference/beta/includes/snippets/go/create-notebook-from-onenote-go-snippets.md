---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewNotebook()
displayName := "My Private notebook"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().Onenote().Notebooks().Post(context.Background(), requestBody, nil)


```