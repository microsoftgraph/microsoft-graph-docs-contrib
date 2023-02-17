---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewItemPhone()
displayName := "Car Phone"
requestBody.SetDisplayName(&displayName) 
number := "+7 499 342 22 13"
requestBody.SetNumber(&number) 

result, err := graphClient.Me().Profile().Phones().Post(context.Background(), requestBody, nil)


```