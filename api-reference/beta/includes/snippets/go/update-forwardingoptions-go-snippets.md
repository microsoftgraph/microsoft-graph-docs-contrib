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

requestBody := graphmodelsnetworkaccess.NewForwardingOptions()
skipDnsLookupState := graphmodels.DISABLED_STATUS 
requestBody.SetSkipDnsLookupState(&skipDnsLookupState) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
forwardingOptions, err := graphClient.NetworkAccess().Settings().ForwardingOptions().Patch(context.Background(), requestBody, nil)


```