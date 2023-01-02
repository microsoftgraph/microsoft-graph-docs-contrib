---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "accessPackageAssignmentPolicy/Id eq 'db440482-1210-4a60-9b55-3ac7a72f63ba'"

requestParameters := &graphconfig.AccessPackageAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"target","accessPackageAssignmentResourceRoles"},
}
configuration := &graphconfig.AccessPackageAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignments().Get(context.Background(), configuration)


```