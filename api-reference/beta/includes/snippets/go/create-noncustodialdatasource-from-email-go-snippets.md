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

requestBody := graphmodelsediscovery.NewNoncustodialDataSource()
applyHoldToSource := true
requestBody.SetApplyHoldToSource(&applyHoldToSource) 
dataSource := graphmodelsediscovery.NewUserSource()
email := "adelev@contoso.com"
dataSource.SetEmail(&email) 
requestBody.SetDataSource(dataSource)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
noncustodialDataSources, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").NoncustodialDataSources().Post(context.Background(), requestBody, nil)


```