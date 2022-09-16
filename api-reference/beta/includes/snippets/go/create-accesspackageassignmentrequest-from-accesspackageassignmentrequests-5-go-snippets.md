---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := "AdminAdd"
requestBody.SetRequestType(&requestType) 
accessPackageAssignment := graphmodels.NewaccessPackageAssignment()
target := graphmodels.Newtarget()
email := "user@contoso.com"
target.SetEmail(&email) 
accessPackageAssignment.SetTarget(target)
assignmentPolicyId := "2264bf65-76ba-417b-a27d-54d291f0cbc8"
accessPackageAssignment.SetAssignmentPolicyId(&assignmentPolicyId) 
accessPackageId := "a914b616-e04e-476b-aa37-91038f0b165b"
accessPackageAssignment.SetAccessPackageId(&accessPackageId) 
requestBody.SetAccessPackageAssignment(accessPackageAssignment)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().Post(requestBody)


```