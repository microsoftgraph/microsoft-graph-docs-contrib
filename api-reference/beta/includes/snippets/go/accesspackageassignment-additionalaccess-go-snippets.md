---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AccessPackageAssignmentRequestBuilderGetQueryParameters{
	Expand: [] string {"target"},
}
configuration := &graphconfig.AccessPackageAssignmentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentsById("accessPackageAssignment-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```