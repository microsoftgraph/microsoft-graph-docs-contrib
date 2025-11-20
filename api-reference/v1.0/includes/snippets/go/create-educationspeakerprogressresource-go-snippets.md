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
resource := graphmodels.NewEducationSpeakerProgressResource()
displayName := "speakerProgressTestResource"
resource.SetDisplayName(&displayName) 
recordingTimeLimitInMinutes := int32(5)
resource.SetRecordingTimeLimitInMinutes(&recordingTimeLimitInMinutes) 
showRehearsalReportToStudentBeforeMediaUpload := true
resource.SetShowRehearsalReportToStudentBeforeMediaUpload(&showRehearsalReportToStudentBeforeMediaUpload) 
maxRecordingAttempts := int32(1)
resource.SetMaxRecordingAttempts(&maxRecordingAttempts) 
isVideoRequired := true
resource.SetIsVideoRequired(&isVideoRequired) 
isAiFeedbackEnabled := true
resource.SetIsAiFeedbackEnabled(&isAiFeedbackEnabled) 
presentationTitle := "speakerProgressTestResource"
resource.SetPresentationTitle(&presentationTitle) 
spokenLanguageLocale := "en-US"
resource.SetSpokenLanguageLocale(&spokenLanguageLocale) 
speakerCoachSettings := graphmodels.NewEducationSpeakerCoachSettings()
deliverySettings := graphmodels.NewEducationSpeakerCoachDeliverySettings()
isPronunciationEnabled := true
deliverySettings.SetIsPronunciationEnabled(&isPronunciationEnabled) 
speakerCoachSettings.SetDeliverySettings(deliverySettings)
resource.SetSpeakerCoachSettings(speakerCoachSettings)
aiFeedbackCriteria := graphmodels.NewEducationAiFeedbackCriteria()
speechType := graphmodels.INFORMATIVE_EDUCATIONSPEECHTYPE 
aiFeedbackCriteria.SetSpeechType(&speechType) 
aiFeedbackSettings := graphmodels.NewEducationAiFeedbackSettings()
deliverySettings := graphmodels.NewEducationAiFeedbackDeliverySettings()
isStyleEnabled := true
deliverySettings.SetIsStyleEnabled(&isStyleEnabled) 
aiFeedbackSettings.SetDeliverySettings(deliverySettings)
aiFeedbackCriteria.SetAiFeedbackSettings(aiFeedbackSettings)
resource.SetAiFeedbackCriteria(aiFeedbackCriteria)
requestBody.SetResource(resource)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resources, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Resources().Post(context.Background(), requestBody, nil)


```