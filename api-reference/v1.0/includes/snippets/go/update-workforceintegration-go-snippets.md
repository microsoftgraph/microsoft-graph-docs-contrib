---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewWorkforceIntegration()
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName)
apiVersion := int32(99)
requestBody.SetApiVersion(&apiVersion)
encryption := msgraphsdk.NewWorkforceIntegrationEncryption()
requestBody.SetEncryption(encryption)
protocol := "protocol-value"
encryption.SetProtocol(&protocol)
secret := "secret-value"
encryption.SetSecret(&secret)
isActive := true
requestBody.SetIsActive(&isActive)
url := "url-value"
requestBody.SetUrl(&url)
supportedEntities := "supportedEntities-value"
requestBody.SetSupportedEntities(&supportedEntities)
options := &msgraphsdk.WorkforceIntegrationRequestBuilderPatchOptions{
	Body: requestBody,
}
workforceIntegrationId := "workforceIntegration-id"
graphClient.Teamwork().WorkforceIntegrationsById(&workforceIntegrationId).Patch(options)


```