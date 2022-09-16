---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.CloudPcProvisioningPolicyRequestBuilderGetQueryParameters{
	Expand: [] string {"assignments"},
}
configuration := &graphconfig.CloudPcProvisioningPolicyRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPoliciesById("cloudPcProvisioningPolicy-id").Get(context.Background(), configuration)


```