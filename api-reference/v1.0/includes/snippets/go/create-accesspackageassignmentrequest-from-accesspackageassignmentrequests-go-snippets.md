---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := graphmodels.USERADD_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 
assignment := graphmodels.Newassignment()
additionalData := map[string]interface{}{
	"accessPackageId" : "d7be3253-b9c6-4fab-adef-30d30de8da2b", 
}
assignment.SetAdditionalData(additionalData)
requestBody.SetAssignment(assignment)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(requestBody)


```