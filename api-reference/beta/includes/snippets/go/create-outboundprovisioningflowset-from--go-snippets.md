---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

outboundProvisioningFlowSets, err := graphClient.External().IndustryData().OutboundProvisioningFlowSets().Post(context.Background(), requestBody, nil)


```