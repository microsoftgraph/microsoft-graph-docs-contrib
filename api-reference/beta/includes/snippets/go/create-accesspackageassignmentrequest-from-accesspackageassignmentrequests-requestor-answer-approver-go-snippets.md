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


requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := "userAdd"
requestBody.SetRequestType(&requestType) 


accessPackageAnswer := graphmodels.NewAccessPackageAnswerString()
displayValue := "This is the answer to a multiple choice question"
accessPackageAnswer.SetDisplayValue(&displayValue) 
value := "MultipleChoiceAnswerValue"
accessPackageAnswer.SetValue(&value) 
answeredQuestion := graphmodels.NewAccessPackageMultipleChoiceQuestion()
id := "8fe745e7-80b2-490d-bd22-4e708c77288c"
answeredQuestion.SetId(&id) 
accessPackageAnswer.SetAnsweredQuestion(answeredQuestion)
accessPackageAnswer1 := graphmodels.NewAccessPackageAnswerString()
value := "This is my answer to a text input question."
accessPackageAnswer1.SetValue(&value) 
displayValue := "This is my answer."
accessPackageAnswer1.SetDisplayValue(&displayValue) 
answeredQuestion := graphmodels.NewAccessPackageTextInputQuestion()
id := "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6"
answeredQuestion.SetId(&id) 
accessPackageAnswer1.SetAnsweredQuestion(answeredQuestion)

answers := []graphmodels.AccessPackageAnswerable {
	accessPackageAnswer,
	accessPackageAnswer1,
}
requestBody.SetAnswers(answers)
additionalData := map[string]interface{}{
assignment := graphmodels.New()
accessPackageId := "977c7ff4-ef8f-4910-9d31-49048ddf3120"
assignment.SetAccessPackageId(&accessPackageId) 
	requestBody.SetAssignment(assignment)
}
requestBody.SetAdditionalData(additionalData)

assignmentRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(context.Background(), requestBody, nil)


```