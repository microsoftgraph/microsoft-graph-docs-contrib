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

requestBody := graphmodels.NewBrowserSiteList()
displayName := "Production Site List A"
requestBody.SetDisplayName(&displayName) 
description := "Production site list for team A"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
siteLists, err := graphClient.Admin().Edge().InternetExplorerMode().SiteLists().Post(context.Background(), requestBody, nil)


```