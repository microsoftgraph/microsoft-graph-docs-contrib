---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewSite()
name := "Communication Site Test"
requestBody.SetName(&name) 
webUrl := "https://contoso.sharepoint.com/sites/commsite1"
requestBody.SetWebUrl(&webUrl) 
locale := "en-US"
requestBody.SetLocale(&locale) 
shareByEmailEnabled := false
requestBody.SetShareByEmailEnabled(&shareByEmailEnabled) 
description := "Test Site Description"
requestBody.SetDescription(&description) 
template := graphmodels.SITEPAGEPUBLISHING_SITETEMPLATETYPE 
requestBody.SetTemplate(&template) 
ownerIdentityToResolve := graphmodels.NewIdentityInput()
email := "ryan@contoso.com"
ownerIdentityToResolve.SetEmail(&email) 
requestBody.SetOwnerIdentityToResolve(ownerIdentityToResolve)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sites, err := graphClient.Sites().Post(context.Background(), requestBody, nil)


```