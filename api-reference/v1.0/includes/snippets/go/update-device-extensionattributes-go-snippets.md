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


requestBody := graphmodels.NewDevice()
additionalData := map[string]interface{}{
extensionAttributes := graphmodels.New()
extensionAttribute1 := "BYOD-Device"
extensionAttributes.SetExtensionAttribute1(&extensionAttribute1) 
	requestBody.SetExtensionAttributes(extensionAttributes)
}
requestBody.SetAdditionalData(additionalData)

devices, err := graphClient.Devices().ByDeviceId("device-id").Patch(context.Background(), requestBody, nil)


```