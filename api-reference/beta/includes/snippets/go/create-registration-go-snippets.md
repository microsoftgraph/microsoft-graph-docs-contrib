---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Me/OnlineMeetings/Item/Registration"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRegistrationPostRequestBody()
additionalData := map[string]interface{}{
	"subject" : "Microsoft Ignite", 
	"description" : "Join us November 2–4, 2021 to explore the latest tools, training sessions, technical expertise, networking opportunities, and more.", 
	"startDateTime" : "2021-11-02T08:00:00-08:00", 
	"endDateTime" : "2021-11-04T04:00:00-08:00", 
	"allowedRegistrant" : "everyone", 


 := graphmodels.New()
displayName := "Henry Ross"
.SetDisplayName(&displayName) 
bio := "Chairman and Chief Executive Officer"
.SetBio(&bio) 
 := graphmodels.New()
displayName := "Hailey Clark"
.SetDisplayName(&displayName) 
bio := "EVP"
.SetBio(&bio) 

	speakers := []graphmodels.Objectable {
		,
		,

	}


 := graphmodels.New()
displayName := "Are you a developer?"
.SetDisplayName(&displayName) 
answerInputType := "radioButton"
.SetAnswerInputType(&answerInputType) 
answerOptions := []string {
	"Yes",
	"No",

}
.SetAnswerOptions(answerOptions)
isRequired := true
.SetIsRequired(&isRequired) 
 := graphmodels.New()
displayName := "Where did you hear about us?"
.SetDisplayName(&displayName) 
answerInputType := "text"
.SetAnswerInputType(&answerInputType) 
isRequired := false
.SetIsRequired(&isRequired) 

	customQuestions := []graphmodels.Objectable {
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Registration().Post(context.Background(), requestBody, nil)


```