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

requestBody := graphmodels.NewPersonWebsite()
categories := []string {
	"football",
}
requestBody.SetCategories(categories)
displayName := "Lyn Damer"
requestBody.SetDisplayName(&displayName) 
webUrl := "www.lyndamer.no"
requestBody.SetWebUrl(&webUrl) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
websites, err := graphClient.Me().Profile().Websites().Post(context.Background(), requestBody, nil)


```