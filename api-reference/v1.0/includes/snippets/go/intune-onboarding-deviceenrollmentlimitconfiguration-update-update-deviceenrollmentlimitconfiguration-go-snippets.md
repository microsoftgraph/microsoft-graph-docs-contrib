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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceEnrollmentConfiguration()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
priority := int32(8)
requestBody.SetPriority(&priority) 
version := int32(7)
requestBody.SetVersion(&version) 
limit := int32(5)
requestBody.SetLimit(&limit) 

result, err := graphClient.DeviceManagement().DeviceEnrollmentConfigurations().ByDeviceEnrollmentConfigurationId("deviceEnrollmentConfiguration-id").Patch(context.Background(), requestBody, nil)


```