---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPersonName()
nickname := "Kesha"
requestBody.SetNickname(&nickname) 

result, err := graphClient.Me().Profile().NamesById("personName-id").Patch(context.Background(), requestBody, nil)


```