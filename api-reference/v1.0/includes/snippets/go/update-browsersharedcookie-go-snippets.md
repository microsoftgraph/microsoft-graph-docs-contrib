---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBrowserSharedCookie()
hostOrDomain := "www.microsoft.com"
requestBody.SetHostOrDomain(&hostOrDomain) 
sourceEnvironment := graphmodels.MICROSOFTEDGE_BROWSERSHAREDCOOKIESOURCEENVIRONMENT 
requestBody.SetSourceEnvironment(&sourceEnvironment) 
displayName := "Microsoft Cookie"
requestBody.SetDisplayName(&displayName) 
path := "/"
requestBody.SetPath(&path) 
hostOnly := true
requestBody.SetHostOnly(&hostOnly) 
comment := "Updating source environment."
requestBody.SetComment(&comment) 

result, err := graphClient.Admin().Edge().InternetExplorerMode().SiteLists().BySiteListId("browserSiteList-id").SharedCookies().BySharedCookieId("browserSharedCookie-id").Patch(context.Background(), requestBody, nil)


```