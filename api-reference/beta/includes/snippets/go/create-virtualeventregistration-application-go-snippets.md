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

requestBody := graphmodels.NewVirtualEventRegistration()
firstName := "Diane"
requestBody.SetFirstName(&firstName) 
lastName := "Demoss"
requestBody.SetLastName(&lastName) 
email := "DianeDemoss@contoso.com"
requestBody.SetEmail(&email) 
preferredTimezone := "Pacific Standard Time"
requestBody.SetPreferredTimezone(&preferredTimezone) 
preferredLanguage := "en-us"
requestBody.SetPreferredLanguage(&preferredLanguage) 


virtualEventRegistrationQuestionAnswer := graphmodels.NewVirtualEventRegistrationQuestionAnswer()
questionId := "95320781-96b3-4b8f-8cf8-e6561d23447a"
virtualEventRegistrationQuestionAnswer.SetQuestionId(&questionId) 
value := null
virtualEventRegistrationQuestionAnswer.SetValue(&value) 
booleanValue := null
virtualEventRegistrationQuestionAnswer.SetBooleanValue(&booleanValue) 
multiChoiceValues := []string {
	"Seattle",
}
virtualEventRegistrationQuestionAnswer.SetMultiChoiceValues(multiChoiceValues)
virtualEventRegistrationQuestionAnswer1 := graphmodels.NewVirtualEventRegistrationQuestionAnswer()
questionId := "4577afdb-8bee-4219-b482-04b52c6b855c"
virtualEventRegistrationQuestionAnswer1.SetQuestionId(&questionId) 
value := null
virtualEventRegistrationQuestionAnswer1.SetValue(&value) 
booleanValue := true
virtualEventRegistrationQuestionAnswer1.SetBooleanValue(&booleanValue) 
multiChoiceValues := []string {

}
virtualEventRegistrationQuestionAnswer1.SetMultiChoiceValues(multiChoiceValues)
virtualEventRegistrationQuestionAnswer2 := graphmodels.NewVirtualEventRegistrationQuestionAnswer()
questionId := "80fefcf1-caf7-4cd3-b8d7-159e17c47f20"
virtualEventRegistrationQuestionAnswer2.SetQuestionId(&questionId) 
value := null
virtualEventRegistrationQuestionAnswer2.SetValue(&value) 
booleanValue := null
virtualEventRegistrationQuestionAnswer2.SetBooleanValue(&booleanValue) 
multiChoiceValues := []string {
	"London",
	"New York City",
}
virtualEventRegistrationQuestionAnswer2.SetMultiChoiceValues(multiChoiceValues)

registrationQuestionAnswers := []graphmodels.VirtualEventRegistrationQuestionAnswerable {
	virtualEventRegistrationQuestionAnswer,
	virtualEventRegistrationQuestionAnswer1,
	virtualEventRegistrationQuestionAnswer2,
}
requestBody.SetRegistrationQuestionAnswers(registrationQuestionAnswers)
additionalData := map[string]interface{}{
externalRegistrationInformation := graph.New()
referrer := "Facebook"
externalRegistrationInformation.SetReferrer(&referrer) 
registrationId := "myExternalRegistrationId"
externalRegistrationInformation.SetRegistrationId(&registrationId) 
	requestBody.SetExternalRegistrationInformation(externalRegistrationInformation)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
registrations, err := graphClient.Solutions().VirtualEvents().Webinars().ByVirtualEventWebinarId("virtualEventWebinar-id").Registrations().Post(context.Background(), requestBody, nil)


```