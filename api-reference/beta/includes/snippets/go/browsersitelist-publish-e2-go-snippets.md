---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphadmin.NewPublishPostRequestBody()
revision := "1.0"
requestBody.SetRevision(&revision) 


browserSite := graphmodels.NewBrowserSite()
id := "53e5f971-fc7b-4cd3-a1bf-34d7c0416882"
browserSite.SetId(&id) 
browserSite1 := graphmodels.NewBrowserSite()
id := "2e27cc86-3662-447e-b751-274fb9f869ea"
browserSite1.SetId(&id) 

sites := []graphmodels.browserSiteable {
	browserSite,
	browserSite1,
}
requestBody.SetSites(sites)


browserSharedCookie := graphmodels.NewBrowserSharedCookie()
id := "7f639835-23ab-4793-b1e6-1a06fad127a2"
browserSharedCookie.SetId(&id) 

sharedCookies := []graphmodels.browserSharedCookieable {
	browserSharedCookie,
}
requestBody.SetSharedCookies(sharedCookies)

result, err := graphClient.Admin().Edge().InternetExplorerMode().SiteLists().BySiteListId("browserSiteList-id").Publish().Post(context.Background(), requestBody, nil)


```