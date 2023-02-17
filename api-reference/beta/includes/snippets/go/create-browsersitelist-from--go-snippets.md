---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBrowserSiteList()
displayName := "Production Site List A"
requestBody.SetDisplayName(&displayName) 
description := "Production site list for team A"
requestBody.SetDescription(&description) 

result, err := graphClient.Admin().Edge().InternetExplorerMode().SiteLists().Post(context.Background(), requestBody, nil)


```