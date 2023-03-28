---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageAssignmentPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"customExtensionHandlers($expand=customExtension)"},
}
configuration := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageAssignmentPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPoliciesById("accessPackageAssignmentPolicy-id").Get(context.Background(), configuration)


```