---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

requestBody := graphmodelsindustrydata.NewOutboundProvisioningFlowSet()
displayName := "Outbound Provisioning Flow Test"
requestBody.SetDisplayName(&displayName) 
filter := graphmodelsindustrydata.NewBasicFilter()
attribute := graphmodels.ORGEXTERNALID_FILTEROPTIONS 
filter.SetAttribute(&attribute) 
in := []string {
	"Quarter",
	"Demo",
}
filter.SetIn(in)
requestBody.SetFilter(filter)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
outboundProvisioningFlowSets, err := graphClient.External().IndustryData().OutboundProvisioningFlowSets().Post(context.Background(), requestBody, nil)


```