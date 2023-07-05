---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDetectedApp()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
version := "Version value"
requestBody.SetVersion(&version) 
sizeInByte := int64(10)
requestBody.SetSizeInByte(&sizeInByte) 
deviceCount := int32(11)
requestBody.SetDeviceCount(&deviceCount) 
publisher := "Publisher value"
requestBody.SetPublisher(&publisher) 
platform := graphmodels.WINDOWS_DETECTEDAPPPLATFORMTYPE 
requestBody.SetPlatform(&platform) 

result, err := graphClient.DeviceManagement().DetectedApps().Post(context.Background(), requestBody, nil)


```