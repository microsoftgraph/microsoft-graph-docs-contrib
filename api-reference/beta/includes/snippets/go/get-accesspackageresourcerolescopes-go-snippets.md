---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.AccessPackageRequestBuilderGetQueryParameters{
	Expand: "accessPackageResourceRoleScopes($expand=accessPackageResourceRole,accessPackageResourceScope)",
}
options := &msgraphsdk.AccessPackageRequestBuilderGetOptions{
	Q: requestParameters,
}
accessPackageId := "accessPackage-id"
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById(&accessPackageId).Get(options);


```