---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAssociateWithHubSitesPostRequestBody()
hubSiteUrls := []string {
	"https://graph.microsoft.com/beta/sites/id",

}
requestBody.SetHubSiteUrls(hubSiteUrls)
propagateToExistingLists := false
requestBody.SetPropagateToExistingLists(&propagateToExistingLists) 

graphClient.SitesById("site-id").ContentTypesById("contentType-id").AssociateWithHubSites().Post(requestBody)


```