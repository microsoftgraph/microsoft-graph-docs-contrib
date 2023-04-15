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
id := "7a6ab703-0780-4b37-8445-81f679b2d75c"
requestBody.SetId(&id) 
requestType := graphmodels.ADMINUPDATE_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 


accessPackageAnswer := graphmodels.NewAccessPackageAnswer()
answeredQuestion := graphmodels.NewAccessPackageQuestion()
id := "8fe745e7-80b2-490d-bd22-4e708c77288c"
answeredQuestion.SetId(&id) 
accessPackageAnswer.SetAnsweredQuestion(answeredQuestion)
additionalData := map[string]interface{}{
	"value" : "UpdatedAnswerValue", 
}
accessPackageAnswer.SetAdditionalData(additionalData)
accessPackageAnswer1 := graphmodels.NewAccessPackageAnswer()
displayValue := "This is my updated answer to the question."
accessPackageAnswer1.SetDisplayValue(&displayValue) 
answeredQuestion := graphmodels.NewAccessPackageQuestion()
id := "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6"
answeredQuestion.SetId(&id) 
accessPackageAnswer1.SetAnsweredQuestion(answeredQuestion)
additionalData := map[string]interface{}{
	"value" : "My updated answer.", 
}
accessPackageAnswer1.SetAdditionalData(additionalData)

answers := []graphmodels.AccessPackageAnswerable {
	accessPackageAnswer,
	accessPackageAnswer1,

}
requestBody.SetAnswers(answers)
assignment := graphmodels.NewAccessPackageAssignment()
id := "44c741c1-2cf4-40db-83b6-e0112f8e5a83"
assignment.SetId(&id) 
requestBody.SetAssignment(assignment)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(context.Background(), requestBody, nil)


```