---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCloudPcDeviceImage()
displayName := "ImageForDev"
requestBody.SetDisplayName(&displayName) 
version := "0.0.1"
requestBody.SetVersion(&version) 
sourceImageResourceId := "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage"
requestBody.SetSourceImageResourceId(&sourceImageResourceId) 

deviceImages, err := graphClient.DeviceManagement().VirtualEndpoint().DeviceImages().Post(context.Background(), requestBody, nil)


```