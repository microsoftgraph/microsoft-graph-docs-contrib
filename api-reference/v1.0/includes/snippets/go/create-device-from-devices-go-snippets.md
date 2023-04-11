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
accountEnabled := false
requestBody.SetAccountEnabled(&accountEnabled) 


alternativeSecurityId := graphmodels.NewAlternativeSecurityId()
type := int32(2)
alternativeSecurityId.SetType(&type) 
key := []byte("base64Y3YxN2E1MWFlYw==")
alternativeSecurityId.SetKey(&key) 

alternativeSecurityIds := []graphmodels.AlternativeSecurityIdable {
	alternativeSecurityId,

}
requestBody.SetAlternativeSecurityIds(alternativeSecurityIds)
deviceId := "4c299165-6e8f-4b45-a5ba-c5d250a707ff"
requestBody.SetDeviceId(&deviceId) 
displayName := "Test device"
requestBody.SetDisplayName(&displayName) 
operatingSystem := "linux"
requestBody.SetOperatingSystem(&operatingSystem) 
operatingSystemVersion := "1"
requestBody.SetOperatingSystemVersion(&operatingSystemVersion) 

result, err := graphClient.Devices().Post(context.Background(), requestBody, nil)


```