---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := "AdminRemove"
requestBody.SetRequestType(&requestType) 
accessPackageAssignment := graphmodels.NewaccessPackageAssignment()
id := "a6bb6942-3ae1-4259-9908-0133aaee9377"
accessPackageAssignment.SetId(&id) 
requestBody.SetAccessPackageAssignment(accessPackageAssignment)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().Post(requestBody)


```