---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-sdk-go/communications"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphcommunications.NewSendDtmfTonesPostRequestBody()
tones := []graphmodels.Toneable {
	tone := graphmodels.TONE1_TONE 
	requestBody.SetTone(&tone) 
	tone := graphmodels.TONE2_TONE 
	requestBody.SetTone(&tone) 
	tone := graphmodels.TONE3_TONE 
	requestBody.SetTone(&tone) 
	tone := graphmodels.TONE4_TONE 
	requestBody.SetTone(&tone) 
	tone := graphmodels.TONE5_TONE 
	requestBody.SetTone(&tone) 
	tone := graphmodels.TONE6_TONE 
	requestBody.SetTone(&tone) 
	tone := graphmodels.TONE7_TONE 
	requestBody.SetTone(&tone) 
	tone := graphmodels.TONE8_TONE 
	requestBody.SetTone(&tone) 
	tone := graphmodels.TONE9_TONE 
	requestBody.SetTone(&tone) 
	tone := graphmodels.TONE0_TONE 
	requestBody.SetTone(&tone) 
	tone := graphmodels.STAR_TONE 
	requestBody.SetTone(&tone) 
	tone := graphmodels.POUND_TONE 
	requestBody.SetTone(&tone)
}
requestBody.SetTones(tones)
delayBetweenTonesMs := int32(1000)
requestBody.SetDelayBetweenTonesMs(&delayBetweenTonesMs) 
clientContext := "e0be71f1-a14f-4cec-b65a-e7aba5db7c53"
requestBody.SetClientContext(&clientContext) 

sendDtmfTones, err := graphClient.Communications().Calls().ByCallId("call-id").SendDtmfTones().Post(context.Background(), requestBody, nil)


```