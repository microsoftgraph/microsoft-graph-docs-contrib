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


requestParameters := &graphdevicemanagement.DeviceManagementVirtualEndpointCloudPCItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","imageDisplayName","lastModifiedDateTime","lastRemoteActionResult","lastLoginResult","connectivityResult"},
}
configuration := &graphdevicemanagement.DeviceManagementVirtualEndpointCloudPCItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

cloudPCs, err := graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().ByCloudPCId("cloudPC-id").Get(context.Background(), configuration)


```