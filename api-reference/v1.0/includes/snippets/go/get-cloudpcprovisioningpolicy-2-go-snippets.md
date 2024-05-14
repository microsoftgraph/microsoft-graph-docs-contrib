---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphdevicemanagement.DeviceManagementVirtualEndpointProvisioningPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"assignments"},
}
configuration := &graphdevicemanagement.DeviceManagementVirtualEndpointProvisioningPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

provisioningPolicies, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().ByCloudPcProvisioningPolicyId("cloudPcProvisioningPolicy-id").Get(context.Background(), configuration)


```