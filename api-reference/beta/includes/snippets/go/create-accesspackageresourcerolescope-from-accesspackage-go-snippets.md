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
	"originId": "Member_b31fe1f1-3651-488f-bd9a-1711887fd4ca",
	"displayName": "Member",
	"originSystem": "AadGroup",
}
accessPackageResourceScope := msgraphsdk.NewAccessPackageResourceScope()
requestBody.SetAccessPackageResourceScope(accessPackageResourceScope)
accessPackageResourceScope.SetAdditionalData(map[string]interface{}{
	"originId": "b31fe1f1-3651-488f-bd9a-1711887fd4ca",
	"originSystem": "AadGroup",
}
options := &msgraphsdk.AccessPackageResourceRoleScopesRequestBuilderPostOptions{
	Body: requestBody,
}
accessPackageId := "accessPackage-id"
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById(&accessPackageId).AccessPackageResourceRoleScopes().Post(options);


```