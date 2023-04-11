---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDevice()
accountEnabled := true
requestBody.SetAccountEnabled(&accountEnabled) 


alternativeSecurityId := graphmodels.NewAlternativeSecurityId()
type := int32(99)
alternativeSecurityId.SetType(&type) 
identityProvider := "identityProvider-value"
alternativeSecurityId.SetIdentityProvider(&identityProvider) 
key := []byte("base64Y3YxN2E1MWFlYw==")
alternativeSecurityId.SetKey(&key) 

alternativeSecurityIds := []graphmodels.AlternativeSecurityIdable {
	alternativeSecurityId,

}
requestBody.SetAlternativeSecurityIds(alternativeSecurityIds)
approximateLastSignInDateTime , err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
requestBody.SetApproximateLastSignInDateTime(&approximateLastSignInDateTime) 
deviceId := "deviceId-value"
requestBody.SetDeviceId(&deviceId) 
deviceMetadata := "deviceMetadata-value"
requestBody.SetDeviceMetadata(&deviceMetadata) 
deviceVersion := int32(99)
requestBody.SetDeviceVersion(&deviceVersion) 

result, err := graphClient.Devices().Post(context.Background(), requestBody, nil)


```