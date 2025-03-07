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

requestBody := graphmodelsnetworkaccess.NewBranchSite()
name := "test branch - 11:50"
requestBody.SetName(&name) 
country := "United States"
requestBody.SetCountry(&country) 
region := graphmodels.EAST US_REGION 
requestBody.SetRegion(&region) 
bandwidthCapacity := int64(500)
requestBody.SetBandwidthCapacity(&bandwidthCapacity) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
branches, err := graphClient.NetworkAccess().Connectivity().Branches().Post(context.Background(), requestBody, nil)


```