---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AccessPackageRequestBuilderGetQueryParameters{
	Expand: [] string {"accessPackageResourceRoleScopes($expand=accessPackageResourceRole,accessPackageResourceScope)"},
}
configuration := &graphconfig.AccessPackageRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById("accessPackage-id").Get(context.Background(), configuration)


```