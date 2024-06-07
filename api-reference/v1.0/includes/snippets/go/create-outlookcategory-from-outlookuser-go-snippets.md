---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewOutlookCategory()
displayName := "Project expenses"
requestBody.SetDisplayName(&displayName) 
color := graphmodels.PRESET9_CATEGORYCOLOR 
requestBody.SetColor(&color) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
masterCategories, err := graphClient.Me().Outlook().MasterCategories().Post(context.Background(), requestBody, nil)


```