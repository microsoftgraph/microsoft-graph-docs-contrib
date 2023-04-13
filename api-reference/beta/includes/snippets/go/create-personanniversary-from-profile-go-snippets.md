---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPersonAnnualEvent()
type := graphmodels.BIRTHDAY_PERSONANNUALEVENTTYPE 
requestBody.SetType(&type) 
date := 1980-01-08
requestBody.SetDate(&date) 

result, err := graphClient.Me().Profile().Anniversaries().Post(context.Background(), requestBody, nil)


```