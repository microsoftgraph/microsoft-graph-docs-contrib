---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "originSystem eq 'SharePointOnline'"

requestParameters := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageResourceEnvironmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceEnvironments().Get(context.Background(), configuration)


```