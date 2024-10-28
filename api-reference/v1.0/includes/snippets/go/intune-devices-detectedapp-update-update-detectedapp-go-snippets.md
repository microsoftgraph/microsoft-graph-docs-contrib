---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewDetectedApp()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
version := "Version value"
requestBody.SetVersion(&version) 
sizeInByte := int32(10)
requestBody.SetSizeInByte(&sizeInByte) 
deviceCount := int32(11)
requestBody.SetDeviceCount(&deviceCount) 
publisher := "Publisher value"
requestBody.SetPublisher(&publisher) 
platform := graphmodels.WINDOWS_DETECTEDAPPPLATFORMTYPE 
requestBody.SetPlatform(&platform) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
detectedApps, err := graphClient.DeviceManagement().DetectedApps().ByDetectedAppId("detectedApp-id").Patch(context.Background(), requestBody, nil)


```