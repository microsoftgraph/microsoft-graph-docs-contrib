---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewCloudPcProvisioningPolicy()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName)
description := "Description value"
requestBody.SetDescription(&description)
onPremisesConnectionId := "4e47d0f6-6f77-44f0-8893-c0fe1701ffff"
requestBody.SetOnPremisesConnectionId(&onPremisesConnectionId)
imageId := "Image ID value"
requestBody.SetImageId(&imageId)
imageDisplayName := "Image Display Name value"
requestBody.SetImageDisplayName(&imageDisplayName)
imageType := "custom"
requestBody.SetImageType(&imageType)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
}
options := &msgraphsdk.CloudPcProvisioningPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
cloudPcProvisioningPolicyId := "cloudPcProvisioningPolicy-id"
graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPoliciesById(&cloudPcProvisioningPolicyId).Patch(options)


```