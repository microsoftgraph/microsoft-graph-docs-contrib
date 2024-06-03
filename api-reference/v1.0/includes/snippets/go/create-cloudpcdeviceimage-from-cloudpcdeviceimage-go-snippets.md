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

requestBody := graphmodels.NewCloudPcDeviceImage()
displayName := "ImageForDev"
requestBody.SetDisplayName(&displayName) 
version := "0.0.1"
requestBody.SetVersion(&version) 
sourceImageResourceId := "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage"
requestBody.SetSourceImageResourceId(&sourceImageResourceId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceImages, err := graphClient.DeviceManagement().VirtualEndpoint().DeviceImages().Post(context.Background(), requestBody, nil)


```