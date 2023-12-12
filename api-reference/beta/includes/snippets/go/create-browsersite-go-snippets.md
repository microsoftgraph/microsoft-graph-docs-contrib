---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBrowserSite()
webUrl := "www.microsoft.com"
requestBody.SetWebUrl(&webUrl) 
targetEnvironment := graphmodels.INTERNETEXPLORER11_BROWSERSITETARGETENVIRONMENT 
requestBody.SetTargetEnvironment(&targetEnvironment) 
comment := "A site that opens in InternetExplorer11"
requestBody.SetComment(&comment) 
mergeType := graphmodels.DEFAULT_BROWSERSITEMERGETYPE 
requestBody.SetMergeType(&mergeType) 
compatibilityMode := graphmodels.DEFAULT_BROWSERSITECOMPATIBILITYMODE 
requestBody.SetCompatibilityMode(&compatibilityMode) 
allowRedirect := true
requestBody.SetAllowRedirect(&allowRedirect) 

sites, err := graphClient.Admin().Edge().InternetExplorerMode().SiteLists().ByBrowserSiteListId("browserSiteList-id").Sites().Post(context.Background(), requestBody, nil)


```