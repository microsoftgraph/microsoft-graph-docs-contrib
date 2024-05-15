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

requestBody := graphmodels.NewPersonInterest()
categories := []string {
	"Sports",
}
requestBody.SetCategories(categories)
description := "World's greatest football club"
requestBody.SetDescription(&description) 
displayName := "Chelsea FC"
requestBody.SetDisplayName(&displayName) 
webUrl := "https://www.chelseafc.com"
requestBody.SetWebUrl(&webUrl) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
interests, err := graphClient.Me().Profile().Interests().Post(context.Background(), requestBody, nil)


```