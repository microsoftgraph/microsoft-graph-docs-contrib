---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)


requestFilter := "disasterRecoveryCapability/capabilityType eq 'failover'"

requestParameters := &graphdevicemanagement.VirtualEndpointCloudPCsRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","disasterRecoveryCapability"},
	Filter: &requestFilter,
}
configuration := &graphdevicemanagement.VirtualEndpointCloudPCsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
cloudPCs, err := graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().Get(context.Background(), configuration)


```