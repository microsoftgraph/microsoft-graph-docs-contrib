---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphprint "github.com/microsoftgraph/msgraph-beta-sdk-go/print"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphprint.NewCreatePostRequestBody()
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

graphClient.Print().Printers().Create().Post(context.Background(), requestBody, nil)


```