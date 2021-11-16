---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
displayName := "Test Printer"
requestBody.SetDisplayName(&displayName)
manufacturer := "Test Printer Manufacturer"
requestBody.SetManufacturer(&manufacturer)
model := "Test Printer Model"
requestBody.SetModel(&model)
requestBody.SetPhysicalDeviceId(nil)
hasPhysicalDevice := false
requestBody.SetHasPhysicalDevice(&hasPhysicalDevice)
certificateSigningRequest := msgraphsdk.NewPrintCertificateSigningRequest()
requestBody.SetCertificateSigningRequest(certificateSigningRequest)
content := "{content}"
certificateSigningRequest.SetContent(&content)
transportKey := "{sampleTransportKey}"
certificateSigningRequest.SetTransportKey(&transportKey)
requestBody.SetConnectorId(nil)
options := &msgraphsdk.CreateRequestBuilderPostOptions{
	Body: requestBody,
}
graphClient.Print().Printers().Create().Post(options)


```