---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"clientContext": "d45324c1-fcb5-430a-902c-f20af696537c",
	"participantMixerLevels":  []Object {
	}
}
options := &msgraphsdk.ParticipantRequestBuilderPostOptions{
	Body: requestBody,
}
callId := "call-id"
participantId := "participant-id"
graphClient.Communications().CallsById(&callId).ParticipantsById(&participantId).Post(options);


```