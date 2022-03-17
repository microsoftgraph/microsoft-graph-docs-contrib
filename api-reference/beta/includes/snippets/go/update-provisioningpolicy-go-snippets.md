---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCloudPcProvisioningPolicy()
displayName := "HR provisioning policy"
requestBody.SetDisplayName(&displayName)
description := "Provisioning policy for India HR employees"
requestBody.SetDescription(&description)
onPremisesConnectionId := "4e47d0f6-6f77-44f0-8893-c0fe1701b553"
requestBody.SetOnPremisesConnectionId(&onPremisesConnectionId)
options := &msgraphsdk.CloudPcProvisioningPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
cloudPcProvisioningPolicyId := "cloudPcProvisioningPolicy-id"
graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPoliciesById(&cloudPcProvisioningPolicyId).Patch(options)


```