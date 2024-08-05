---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMeetingRegistrationQuestion()
answerInputType := graphmodels.RADIOBUTTON_ANSWERINPUTTYPE 
requestBody.SetAnswerInputType(&answerInputType) 
answerOptions := []string {
	"Software Engineer",
	"Software Development Manager",
	"Product Manager",
	"Data scientist",
	"Other",
}
requestBody.SetAnswerOptions(answerOptions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
customQuestions, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Registration().CustomQuestions().ByMeetingRegistrationQuestionId("meetingRegistrationQuestion-id").Patch(context.Background(), requestBody, nil)


```