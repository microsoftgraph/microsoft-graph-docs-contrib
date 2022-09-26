---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOutlookCategory()
color := graphmodels.PRESET15_CATEGORYCOLOR 
requestBody.SetColor(&color) 

graphClient.Me().Outlook().MasterCategoriesById("outlookCategory-id").Patch(context.Background(), requestBody, nil)


```