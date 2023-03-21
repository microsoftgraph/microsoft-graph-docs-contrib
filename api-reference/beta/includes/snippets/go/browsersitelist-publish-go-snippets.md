---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewPublishPostRequestBody()
revision := "1.0"
requestBody.SetRevision(&revision) 

result, err := graphClient.Admin().Edge().InternetExplorerMode().SiteListsById("browserSiteList-id").Publish().Post(context.Background(), requestBody, nil)


```