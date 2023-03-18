---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewOutlookCategory()
color := graphmodels.PRESET15_CATEGORYCOLOR 
requestBody.SetColor(&color) 

result, err := graphClient.Me().Outlook().MasterCategoriesById("outlookCategory-id").Patch(context.Background(), requestBody, nil)


```