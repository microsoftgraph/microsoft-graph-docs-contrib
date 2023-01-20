---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.DeviceManagementVirtualEndpointProvisioningPolicieItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","description","displayName","displayName","domainJoinConfiguration","imageDisplayName","imageId","imageType","onPremisesConnectionId","windowsSettings","managedBy","cloudPcGroupDisplayName","gracePeriodInHours","localAdminEnabled","alternateResourceUrl"},
}
configuration := &graphconfig.DeviceManagementVirtualEndpointProvisioningPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPoliciesById("cloudPcProvisioningPolicy-id").Get(context.Background(), configuration)


```