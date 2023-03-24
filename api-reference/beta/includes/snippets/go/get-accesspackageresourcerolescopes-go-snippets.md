---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageItemRequestBuilderGetQueryParameters{
	Expand: [] string {"accessPackageResourceRoleScopes($expand=accessPackageResourceRole,accessPackageResourceScope)"},
}
configuration := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById("accessPackage-id").Get(context.Background(), configuration)


```