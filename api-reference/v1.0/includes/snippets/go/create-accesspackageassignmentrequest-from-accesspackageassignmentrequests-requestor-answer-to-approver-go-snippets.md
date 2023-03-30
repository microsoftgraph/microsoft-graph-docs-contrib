---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := graphmodels.USERADD_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 


accessPackageAnswer := graphmodels.NewAccessPackageAnswer()
displayValue := "This is the answer to a multiple choice question"
accessPackageAnswer.SetDisplayValue(&displayValue) 
answeredQuestion := graphmodels.NewAccessPackageQuestion()
id := "8fe745e7-80b2-490d-bd22-4e708c77288c"
answeredQuestion.SetId(&id) 
accessPackageAnswer.SetAnsweredQuestion(answeredQuestion)
additionalData := map[string]interface{}{
	"value" : "MultipleChoiceAnswerValue", 
}
accessPackageAnswer.SetAdditionalData(additionalData)
accessPackageAnswer1 := graphmodels.NewAccessPackageAnswer()
displayValue := "This is my answer."
accessPackageAnswer1.SetDisplayValue(&displayValue) 
answeredQuestion := graphmodels.NewAccessPackageQuestion()
id := "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6"
answeredQuestion.SetId(&id) 
accessPackageAnswer1.SetAnsweredQuestion(answeredQuestion)
additionalData := map[string]interface{}{
	"value" : "This is my answer to a text input question.", 
}
accessPackageAnswer1.SetAdditionalData(additionalData)

answers := []graphmodels.AccessPackageAnswerable {
	accessPackageAnswer,
	accessPackageAnswer1,

}
requestBody.SetAnswers(answers)
assignment := graphmodels.NewAccessPackageAssignment()
additionalData := map[string]interface{}{
	"accessPackageId" : "977c7ff4-ef8f-4910-9d31-49048ddf3120", 
}
assignment.SetAdditionalData(additionalData)
requestBody.SetAssignment(assignment)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(context.Background(), requestBody, nil)


```