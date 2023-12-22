---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

customQuestions, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Registration().CustomQuestions().ByMeetingRegistrationQuestionId("meetingRegistrationQuestion-id").Patch(context.Background(), requestBody, nil)


```