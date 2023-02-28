---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCreatePostRequestBody()
displayName := "Test Printer"
requestBody.SetDisplayName(&displayName) 
manufacturer := "Test Printer Manufacturer"
requestBody.SetManufacturer(&manufacturer) 
model := "Test Printer Model"
requestBody.SetModel(&model) 
physicalDeviceId := null
requestBody.SetPhysicalDeviceId(&physicalDeviceId) 
hasPhysicalDevice := false
requestBody.SetHasPhysicalDevice(&hasPhysicalDevice) 
certificateSigningRequest := graphmodels.NewPrintCertificateSigningRequest()
content := "{content}"
certificateSigningRequest.SetContent(&content) 
transportKey := "{sampleTransportKey}"
certificateSigningRequest.SetTransportKey(&transportKey) 
requestBody.SetCertificateSigningRequest(certificateSigningRequest)
connectorId := null
requestBody.SetConnectorId(&connectorId) 

graphClient.Print().Printers().MicrosoftGraphCreate().Post(context.Background(), requestBody, nil)


```