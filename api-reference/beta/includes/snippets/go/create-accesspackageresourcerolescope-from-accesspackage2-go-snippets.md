---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAccessPackageResourceRoleScope()
accessPackageResourceRole := msgraphsdk.NewAccessPackageResourceRole()
requestBody.SetAccessPackageResourceRole(accessPackageResourceRole)
accessPackageResourceRole.SetAdditionalData(map[string]interface{}{
	"originId": "4",
	"originSystem": "SharePointOnline",
}
accessPackageResourceScope := msgraphsdk.NewAccessPackageResourceScope()
requestBody.SetAccessPackageResourceScope(accessPackageResourceScope)
accessPackageResourceScope.SetAdditionalData(map[string]interface{}{
	"id": "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33",
	"originId": "https://microsoft.sharepoint.com/portals/Community",
	"originSystem": "SharePointOnline",
}
options := &msgraphsdk.AccessPackageResourceRoleScopesRequestBuilderPostOptions{
	Body: requestBody,
}
accessPackageId := "accessPackage-id"
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById(&accessPackageId).AccessPackageResourceRoleScopes().Post(options)


```