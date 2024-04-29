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
displayName := "Outbound provisioning flow Updated"
requestBody.SetDisplayName(&displayName) 

outboundProvisioningFlowSets, err := graphClient.External().IndustryData().OutboundProvisioningFlowSets().ByOutboundProvisioningFlowSetId("outboundProvisioningFlowSet-id").Patch(context.Background(), requestBody, nil)


```