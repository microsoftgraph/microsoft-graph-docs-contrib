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


requestBody := graphmodels.NewDevice()
extensionAttributes := graphmodels.NewOnPremisesExtensionAttributes()
extensionAttribute1 := "BYOD-Device"
extensionAttributes.SetExtensionAttribute1(&extensionAttribute1) 
requestBody.SetExtensionAttributes(extensionAttributes)

devices, err := graphClient.Devices().ByDeviceId("device-id").Patch(context.Background(), requestBody, nil)


```