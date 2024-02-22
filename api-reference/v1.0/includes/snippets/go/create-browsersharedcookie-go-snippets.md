---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


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
sourceEnvironment := graphmodels.INTERNETEXPLORER11_BROWSERSHAREDCOOKIESOURCEENVIRONMENT 
requestBody.SetSourceEnvironment(&sourceEnvironment) 
displayName := "Microsoft Cookie"
requestBody.SetDisplayName(&displayName) 
hostOnly := true
requestBody.SetHostOnly(&hostOnly) 
comment := "A cookie for microsoft.com"
requestBody.SetComment(&comment) 
path := "/"
requestBody.SetPath(&path) 

sharedCookies, err := graphClient.Admin().Edge().InternetExplorerMode().SiteLists().ByBrowserSiteListId("browserSiteList-id").SharedCookies().Post(context.Background(), requestBody, nil)


```