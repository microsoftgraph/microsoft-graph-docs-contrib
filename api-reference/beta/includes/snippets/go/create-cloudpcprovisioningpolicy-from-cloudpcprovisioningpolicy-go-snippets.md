---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCloudPcProvisioningPolicy()
description := "Description value"
requestBody.SetDescription(&description)
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName)
domainJoinConfiguration := msgraphsdk.NewCloudPcDomainJoinConfiguration()
requestBody.SetDomainJoinConfiguration(domainJoinConfiguration)
onPremisesConnectionId := "16ee6c71-fc10-438b-88ac-daa1ccafffff"
domainJoinConfiguration.SetOnPremisesConnectionId(&onPremisesConnectionId)
domainJoinConfiguration.SetAdditionalData(map[string]interface{}{
	"domainJoinType": "hybridAzureADJoin",
}
id := "1d164206-bf41-4fd2-8424-a3192d39ffff"
requestBody.SetId(&id)
imageDisplayName := "Windows-10 19h1-evd"
requestBody.SetImageDisplayName(&imageDisplayName)
imageId := "MicrosoftWindowsDesktop_Windows-10_19h1-evd"
requestBody.SetImageId(&imageId)
imageType := "gallery"
requestBody.SetImageType(&imageType)
onPremisesConnectionId := "4e47d0f6-6f77-44f0-8893-c0fe1701ffff"
requestBody.SetOnPremisesConnectionId(&onPremisesConnectionId)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
}
options := &msgraphsdk.ProvisioningPoliciesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().Post(options)


```