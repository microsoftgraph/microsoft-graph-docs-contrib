---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.External().IndustryData().DataConnectorsById("industryDataConnector-id").IndustryDataValidate().Post(context.Background(), nil)


```