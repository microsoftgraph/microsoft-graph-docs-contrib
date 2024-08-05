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

requestBody := graphmodelsindustrydata.NewProvisioningFlow()
creationOptions := graphmodelsindustrydata.NewSecurityGroupCreationOptions()
createBasedOnroleGroup := true
creationOptions.SetCreateBasedOnroleGroup(&createBasedOnroleGroup) 
createBasedOnOrgPlusroleGroup := false
creationOptions.SetCreateBasedOnOrgPlusroleGroup(&createBasedOnOrgPlusroleGroup) 
requestBody.SetCreationOptions(creationOptions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
provisioningFlows, err := graphClient.External().IndustryData().OutboundProvisioningFlowSets().ByOutboundProvisioningFlowSetId("outboundProvisioningFlowSet-id").ProvisioningFlows().Post(context.Background(), requestBody, nil)


```