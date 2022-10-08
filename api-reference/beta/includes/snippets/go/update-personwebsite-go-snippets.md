---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPersonWebsite()
description := "Lyn Damer play in the Women's 1st Division (Toppserien) in Norway"
requestBody.SetDescription(&description) 

result, err := graphClient.Me().Profile().WebsitesById("personWebsite-id").Patch(context.Background(), requestBody, nil)


```