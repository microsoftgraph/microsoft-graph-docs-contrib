---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEducationClass()
description := "History - World History 1"
requestBody.SetDescription(&description) 
displayName := "World History Level 1"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Education().ClassesById("educationClass-id").Patch(context.Background(), requestBody, nil)


```