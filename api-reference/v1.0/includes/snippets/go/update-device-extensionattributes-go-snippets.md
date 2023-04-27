---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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

result, err := graphClient.Devices().ByDeviceId("device-id").Patch(context.Background(), requestBody, nil)


```