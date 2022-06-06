---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewSet()
description := "mySet"
requestBody.SetDescription(&description)
siteId := "site-id"
setId := "set-id"
graphClient.SitesById(&siteId).TermStore().SetsById(&setId).Patch(requestBody)


```