---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewIndustryDataConnector()
displayName := "API Monitor 60201009"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.External().IndustryData().DataConnectorsById("industryDataConnector-id").Patch(context.Background(), requestBody, nil)


```