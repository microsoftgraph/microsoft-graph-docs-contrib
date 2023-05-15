---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCloudPcDeviceImage()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
osBuildNumber := "OS Build Number value"
requestBody.SetOsBuildNumber(&osBuildNumber) 
operatingSystem := "Operating System value"
requestBody.SetOperatingSystem(&operatingSystem) 
version := "Version value"
requestBody.SetVersion(&version) 
sourceImageResourceId := "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage"
requestBody.SetSourceImageResourceId(&sourceImageResourceId) 

result, err := graphClient.DeviceManagement().VirtualEndpoint().DeviceImages().Post(context.Background(), requestBody, nil)


```