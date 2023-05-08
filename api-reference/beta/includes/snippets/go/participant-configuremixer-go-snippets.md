---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Communications/Calls/Item/Participants/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewParticipant()
additionalData := map[string]interface{}{
	"clientContext" : "d45324c1-fcb5-430a-902c-f20af696537c", 


 := graphmodels.New()
participant := "550fae72-d251-43ec-868c-373732c2704f"
.SetParticipant(&participant) 
exclusive := true
.SetExclusive(&exclusive) 
ducking := graphmodels.New()
rampActive := int32(50)
ducking.SetRampActive(&rampActive) 
rampInactive := int32(50)
ducking.SetRampInactive(&rampInactive) 
lowerLevel := int32(10)
ducking.SetLowerLevel(&lowerLevel) 
upperLevel := int32(50)
ducking.SetUpperLevel(&upperLevel) 
.SetDucking(ducking)


 := graphmodels.New()
participant := "632899f8-2ea1-4604-8413-27bd2892079f"
.SetParticipant(&participant) 
level := int32(50)
.SetLevel(&level) 
duckOthers := false
.SetDuckOthers(&duckOthers) 

sourceLevels := []graphmodels.Objectable {
	,

}
.SetSourceLevels(sourceLevels)

	participantMixerLevels := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Communications().Calls().ByCallId("call-id").Participants().ByParticipantId("participant-id").Post(context.Background(), requestBody, nil)


```