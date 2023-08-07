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
	Select: [] string {"id","description","displayName","displayName","domainJoinConfiguration","imageDisplayName","imageId","imageType","onPremisesConnectionId","windowsSettings","managedBy","cloudPcGroupDisplayName","gracePeriodInHours","localAdminEnabled","alternateResourceUrl"},
}
configuration := &graphdevicemanagement.DeviceManagementVirtualEndpointProvisioningPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

provisioningPolicies, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().ByCloudPcProvisioningPolicyId("cloudPcProvisioningPolicy-id").Get(context.Background(), configuration)


```