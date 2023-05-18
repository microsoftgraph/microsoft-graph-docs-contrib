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


requestBody := graphmodels.NewMeetingRegistrantBase()
additionalData := map[string]interface{}{
	"firstName" : "Lisa", 
	"lastName" : "Adkins", 
	"email" : "lisa.adkins@contoso.com", 


 := graphmodels.New()
questionId := "MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU="
.SetQuestionId(&questionId) 
value := "No"
.SetValue(&value) 
 := graphmodels.New()
questionId := "MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8="
.SetQuestionId(&questionId) 
value := "Internet"
.SetValue(&value) 

	customQuestionAnswers := []graphmodels.Objectable {
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Users().ByUserId("user-id").OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Registration().Registrants().Post(context.Background(), requestBody, nil)


```