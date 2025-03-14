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

requestBody := graphmodels.NewVirtualEventRegistrationQuestionBase()
displayName := "What's your job position?"
requestBody.SetDisplayName(&displayName) 
answerInputType := graphmodels.MULTICHOICE_VIRTUALEVENTREGISTRATIONQUESTIONANSWERINPUTTYPE 
requestBody.SetAnswerInputType(&answerInputType) 
answerChoices := []string {
	"Software Engineer",
	"Engineer Manager",
	"Product Manager",
}
requestBody.SetAnswerChoices(answerChoices)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
questions, err := graphClient.Solutions().VirtualEvents().Webinars().ByVirtualEventWebinarId("virtualEventWebinar-id").RegistrationConfiguration().Questions().Post(context.Background(), requestBody, nil)


```