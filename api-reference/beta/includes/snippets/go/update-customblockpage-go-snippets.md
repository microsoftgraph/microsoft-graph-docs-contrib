---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewCustomBlockPage()
state := graphmodels.ENABLED_STATUS 
requestBody.SetState(&state) 
configuration := graphmodelsnetworkaccess.NewMarkdownBlockMessageConfiguration()
body := "Your admin at NaaSLitware has blocked your access. [Click here for NaaSLitware's Terms of Use](https://www.bing.com)."
configuration.SetBody(&body) 
requestBody.SetConfiguration(configuration)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
customBlockPage, err := graphClient.NetworkAccess().Settings().CustomBlockPage().Patch(context.Background(), requestBody, nil)


```