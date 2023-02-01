---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.IdentityGovernanceEntitlementManagementAssignmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"target"},
}
configuration := &graphconfig.IdentityGovernanceEntitlementManagementAssignmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentsById("accessPackageAssignment-id").Get(context.Background(), configuration)


```