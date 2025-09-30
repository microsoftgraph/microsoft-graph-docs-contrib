---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewEducationAssignmentResource()
distributeForStudentWork := true
requestBody.SetDistributeForStudentWork(&distributeForStudentWork) 
resource := graphmodels.NewEducationResource()
displayName := "speakerProgressTestResource"
resource.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"recordingTimeLimitInMinutes" : int32(5) , 
	showRehearsalReportToStudentBeforeMediaUpload := true
resource.SetShowRehearsalReportToStudentBeforeMediaUpload(&showRehearsalReportToStudentBeforeMediaUpload) 
	"maxRecordingAttempts" : int32(1) , 
	isVideoRequired := true
resource.SetIsVideoRequired(&isVideoRequired) 
	isAiFeedbackEnabled := true
resource.SetIsAiFeedbackEnabled(&isAiFeedbackEnabled) 
	"presentationTitle" : "speakerProgressTestResource", 
	"spokenLanguageLocale" : "en-US", 
speakerCoachSettings := graph.New()
deliverySettings := graph.New()
	isPronunciationEnabled := true
deliverySettings.SetIsPronunciationEnabled(&isPronunciationEnabled) 
	speakerCoachSettings.SetDeliverySettings(deliverySettings)
	resource.SetSpeakerCoachSettings(speakerCoachSettings)
aiFeedbackCriteria := graph.New()
speechType := "informative"
aiFeedbackCriteria.SetSpeechType(&speechType) 
aiFeedbackSettings := graph.New()
deliverySettings := graph.New()
	isStyleEnabled := true
deliverySettings.SetIsStyleEnabled(&isStyleEnabled) 
	aiFeedbackSettings.SetDeliverySettings(deliverySettings)
	aiFeedbackCriteria.SetAiFeedbackSettings(aiFeedbackSettings)
	resource.SetAiFeedbackCriteria(aiFeedbackCriteria)
}
resource.SetAdditionalData(additionalData)
requestBody.SetResource(resource)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resources, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Resources().Post(context.Background(), requestBody, nil)


```