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



requestTop := int32(2)

requestParameters := &graphdevicemanagement.DeviceManagementVirtualEndpointCloudPCsRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphdevicemanagement.DeviceManagementVirtualEndpointCloudPCsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

cloudPCs, err := graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().Get(context.Background(), configuration)


```