---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessPackageAssignmentRequest()
requestType := "AdminAdd"
requestBody.SetRequestType(&requestType)
accessPackageAssignment := msgraphsdk.NewAccessPackageAssignment()
requestBody.SetAccessPackageAssignment(accessPackageAssignment)
target := msgraphsdk.NewAccessPackageSubject()
accessPackageAssignment.SetTarget(target)
email := "user@contoso.com"
target.SetEmail(&email)
assignmentPolicyId := "2264bf65-76ba-417b-a27d-54d291f0cbc8"
accessPackageAssignment.SetAssignmentPolicyId(&assignmentPolicyId)
accessPackageId := "a914b616-e04e-476b-aa37-91038f0b165b"
accessPackageAssignment.SetAccessPackageId(&accessPackageId)
options := &msgraphsdk.AccessPackageAssignmentRequestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().Post(options)


```