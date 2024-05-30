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

requestBody := graphmodels.NewWebAccount()
description := "My Github contributions!"
requestBody.SetDescription(&description) 
userId := "innocenty.popov"
requestBody.SetUserId(&userId) 
service := graphmodels.NewServiceInformation()
name := "GitHub"
service.SetName(&name) 
webUrl := "https://github.com"
service.SetWebUrl(&webUrl) 
requestBody.SetService(service)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
webAccounts, err := graphClient.Me().Profile().WebAccounts().Post(context.Background(), requestBody, nil)


```