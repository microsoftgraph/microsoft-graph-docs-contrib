---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-sdk-go/communications"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphcommunications.NewAnswerPostRequestBody()
callbackUri := "callbackUri-value"
requestBody.SetCallbackUri(&callbackUri) 
mediaConfig := graphmodels.NewAppHostedMediaConfig()
blob := "<Media Session Configuration Blob>"
mediaConfig.SetBlob(&blob) 
requestBody.SetMediaConfig(mediaConfig)
acceptedModalities := []graphmodels.Modalityable {
	modality := graphmodels.AUDIO_MODALITY 
	requestBody.SetModality(&modality)
}
requestBody.SetAcceptedModalities(acceptedModalities)
callOptions := graphmodels.NewIncomingCallOptions()
isContentSharingNotificationEnabled := true
callOptions.SetIsContentSharingNotificationEnabled(&isContentSharingNotificationEnabled) 
isDeltaRosterEnabled := true
callOptions.SetIsDeltaRosterEnabled(&isDeltaRosterEnabled) 
isInteractiveRosterEnabled := true
callOptions.SetIsInteractiveRosterEnabled(&isInteractiveRosterEnabled) 
requestBody.SetCallOptions(callOptions)
participantCapacity := int32(200)
requestBody.SetParticipantCapacity(&participantCapacity) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Communications().Calls().ByCallId("call-id").Answer().Post(context.Background(), requestBody, nil)


```