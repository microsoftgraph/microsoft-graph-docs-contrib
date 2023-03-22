---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewYearTimePeriodDefinition()
displayName := "Fiscal Year 2022"
requestBody.SetDisplayName(&displayName) 
id := "ebf18762-ab92-487e-21d1-08daddab28bb"
requestBody.SetId(&id) 

result, err := graphClient.External().IndustryData().YearsById("yearTimePeriodDefinition-id").Patch(context.Background(), requestBody, nil)


```