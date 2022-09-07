---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := graphmodels.ADMINADD_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 
assignment := graphmodels.Newassignment()
additionalData := map[string]interface{}{
	"targetId" : "46184453-e63b-4f20-86c2-c557ed5d5df9", 
	"assignmentPolicyId" : "2264bf65-76ba-417b-a27d-54d291f0cbc8", 
	"accessPackageId" : "a914b616-e04e-476b-aa37-91038f0b165b", 
}
assignment.SetAdditionalData(additionalData)
requestBody.SetAssignment(assignment)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(requestBody)


```