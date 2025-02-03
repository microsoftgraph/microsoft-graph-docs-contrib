---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  //other-imports
)

requestBody := graphmodelsediscovery.NewCustodian()
email := "AdeleV@contoso.com"
requestBody.SetEmail(&email) 
applyHoldToSources := true
requestBody.SetApplyHoldToSources(&applyHoldToSources) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
custodians, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Custodians().Post(context.Background(), requestBody, nil)


```