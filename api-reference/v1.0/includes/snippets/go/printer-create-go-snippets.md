---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphprint "github.com/microsoftgraph/msgraph-sdk-go/print"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Print().Printers().Create().Post(context.Background(), requestBody, nil)


```