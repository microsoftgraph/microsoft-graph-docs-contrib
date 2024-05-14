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


requestBody := graphmodelsindustrydata.NewProvisioningFlow()
creationOptions := graphmodelsindustrydata.NewSecurityGroupCreationOptions()
createBasedOnroleGroup := true
creationOptions.SetCreateBasedOnroleGroup(&createBasedOnroleGroup) 
createBasedOnOrgPlusroleGroup := false
creationOptions.SetCreateBasedOnOrgPlusroleGroup(&createBasedOnOrgPlusroleGroup) 
requestBody.SetCreationOptions(creationOptions)

provisioningFlows, err := graphClient.External().IndustryData().OutboundProvisioningFlowSets().ByOutboundProvisioningFlowSetId("outboundProvisioningFlowSet-id").ProvisioningFlows().Post(context.Background(), requestBody, nil)


```