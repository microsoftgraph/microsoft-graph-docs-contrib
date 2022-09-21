---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOutlookCategory()
displayName := "Project expenses"
requestBody.SetDisplayName(&displayName) 
color := graphmodels.PRESET9_CATEGORYCOLOR 
requestBody.SetColor(&color) 

result, err := graphClient.Me().Outlook().MasterCategories().Post(context.Background(), requestBody, nil)


```