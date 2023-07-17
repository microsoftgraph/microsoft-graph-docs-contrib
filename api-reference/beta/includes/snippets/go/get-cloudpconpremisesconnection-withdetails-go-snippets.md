---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphdevicemanagement.DeviceManagementVirtualEndpointOnPremisesConnectionItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","healthCheckStatus","healthCheckStatusDetails","inUse"},
}
configuration := &graphdevicemanagement.DeviceManagementVirtualEndpointOnPremisesConnectionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DeviceManagement().VirtualEndpoint().OnPremisesConnections().ByOnPremisesConnectionId("cloudPcOnPremisesConnection-id").Get(context.Background(), configuration)


```