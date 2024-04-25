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
createBasedOnRoleGroup := true
creationOptions.SetCreateBasedOnRoleGroup(&createBasedOnRoleGroup) 
createBasedOnOrgPlusRoleGroup := true
creationOptions.SetCreateBasedOnOrgPlusRoleGroup(&createBasedOnOrgPlusRoleGroup) 
requestBody.SetCreationOptions(creationOptions)

provisioningFlows, err := graphClient.External().IndustryData().OutboundProvisioningFlowSets().ByOutboundProvisioningFlowSetId("outboundProvisioningFlowSet-id").ProvisioningFlows().ByProvisioningFlowId("provisioningFlow-id").Patch(context.Background(), requestBody, nil)


```