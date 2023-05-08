---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := "UserAdd"
requestBody.SetRequestType(&requestType) 
accessPackageAssignment := graphmodels.NewAccessPackageAssignment()
targetId := "46184453-e63b-4f20-86c2-c557ed5d5df9"
accessPackageAssignment.SetTargetId(&targetId) 
assignmentPolicyId := "2264bf65-76ba-417b-a27d-54d291f0cbc8"
accessPackageAssignment.SetAssignmentPolicyId(&assignmentPolicyId) 
accessPackageId := "a914b616-e04e-476b-aa37-91038f0b165b"
accessPackageAssignment.SetAccessPackageId(&accessPackageId) 
requestBody.SetAccessPackageAssignment(accessPackageAssignment)


accessPackageAnswer := graphmodels.NewAccessPackageAnswer()
answeredQuestion := graphmodels.NewAccessPackageQuestion()
id := "A714EC6F-4EE0-4614-BD81-37E0C5ECBBFF"
answeredQuestion.SetId(&id) 
accessPackageAnswer.SetAnsweredQuestion(answeredQuestion)
additionalData := map[string]interface{}{
	"value" : "Arizona", 
}
accessPackageAnswer.SetAdditionalData(additionalData)
accessPackageAnswer1 := graphmodels.NewAccessPackageAnswer()
answeredQuestion := graphmodels.NewAccessPackageQuestion()
id := "AA615EE9-D9D8-4C03-BE91-BEE37106DEDA"
answeredQuestion.SetId(&id) 
accessPackageAnswer1.SetAnsweredQuestion(answeredQuestion)
additionalData := map[string]interface{}{
	"value" : "Need access to marketing campaign material", 
}
accessPackageAnswer1.SetAdditionalData(additionalData)

answers := []graphmodels.AccessPackageAnswerable {
	accessPackageAnswer,
	accessPackageAnswer1,

}
requestBody.SetAnswers(answers)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().Post(context.Background(), requestBody, nil)


```