---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.AccessPackageAssignmentRequestBuilderGetQueryParameters{
	Expand: "target",
}
options := &msgraphsdk.AccessPackageAssignmentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
accessPackageAssignmentId := "accessPackageAssignment-id"
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentsById(&accessPackageAssignmentId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```