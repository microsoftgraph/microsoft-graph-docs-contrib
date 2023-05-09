---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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
targetEnvironment := graphmodels.MICROSOFTEDGE_BROWSERSITETARGETENVIRONMENT 
requestBody.SetTargetEnvironment(&targetEnvironment) 
mergeType := graphmodels.DEFAULT_BROWSERSITEMERGETYPE 
requestBody.SetMergeType(&mergeType) 
compatibilityMode := graphmodels.DEFAULT_BROWSERSITECOMPATIBILITYMODE 
requestBody.SetCompatibilityMode(&compatibilityMode) 
allowRedirect := false
requestBody.SetAllowRedirect(&allowRedirect) 
comment := "Updating to Edge."
requestBody.SetComment(&comment) 

result, err := graphClient.Admin().Edge().InternetExplorerMode().SiteLists().BySiteListId("browserSiteList-id").Sites().BySiteId("browserSite-id").Patch(context.Background(), requestBody, nil)


```