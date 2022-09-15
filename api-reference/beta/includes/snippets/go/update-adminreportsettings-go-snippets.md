---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAdminReportSettings()
displayConcealedNames := true
requestBody.SetDisplayConcealedNames(&displayConcealedNames) 

graphClient.Admin().ReportSettings().Patch(context.Background(), requestBody, nil)


```