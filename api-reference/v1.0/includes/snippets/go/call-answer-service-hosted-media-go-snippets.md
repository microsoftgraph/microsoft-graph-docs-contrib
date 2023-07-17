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


requestBody := graphcommunications.NewAnswerPostRequestBody()
callbackUri := "https://bot.contoso.com/api/calls"
requestBody.SetCallbackUri(&callbackUri) 
acceptedModalities := []graphmodels.Modalityable {
	modality := graphmodels.AUDIO_MODALITY 
	requestBody.SetModality(&modality)
}
requestBody.SetAcceptedModalities(acceptedModalities)
mediaConfig := graphmodels.NewServiceHostedMediaConfig()


mediaInfo := graphmodels.NewMediaInfo()
uri := "https://cdn.contoso.com/beep.wav"
mediaInfo.SetUri(&uri) 
resourceId := "1D6DE2D4-CD51-4309-8DAA-70768651088E"
mediaInfo.SetResourceId(&resourceId) 
mediaInfo1 := graphmodels.NewMediaInfo()
uri := "https://cdn.contoso.com/cool.wav"
mediaInfo1.SetUri(&uri) 
resourceId := "1D6DE2D4-CD51-4309-8DAA-70768651088F"
mediaInfo1.SetResourceId(&resourceId) 

preFetchMedia := []graphmodels.MediaInfoable {
	mediaInfo,
	mediaInfo1,
}
mediaConfig.SetPreFetchMedia(preFetchMedia)
requestBody.SetMediaConfig(mediaConfig)

graphClient.Communications().Calls().ByCallId("call-id").Answer().Post(context.Background(), requestBody, nil)


```