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


requestParameters := &graphdevicemanagement.DeviceManagementVirtualEndpointProvisioningPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"assignments"},
}
configuration := &graphdevicemanagement.DeviceManagementVirtualEndpointProvisioningPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().ByProvisioningPolicieId("cloudPcProvisioningPolicy-id").Get(context.Background(), configuration)


```