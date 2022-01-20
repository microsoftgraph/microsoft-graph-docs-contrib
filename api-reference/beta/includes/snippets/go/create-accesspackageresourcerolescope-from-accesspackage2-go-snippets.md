---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessPackageResourceRoleScope()
accessPackageResourceRole := msgraphsdk.NewAccessPackageResourceRole()
requestBody.SetAccessPackageResourceRole(accessPackageResourceRole)
originId := "4"
accessPackageResourceRole.SetOriginId(&originId)
originSystem := "SharePointOnline"
accessPackageResourceRole.SetOriginSystem(&originSystem)
accessPackageResource := msgraphsdk.NewAccessPackageResource()
accessPackageResourceRole.SetAccessPackageResource(accessPackageResource)
id := "53c71803-a0a8-4777-aecc-075de8ee3991"
accessPackageResource.SetId(&id)
accessPackageResourceScope := msgraphsdk.NewAccessPackageResourceScope()
requestBody.SetAccessPackageResourceScope(accessPackageResourceScope)
id := "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33"
accessPackageResourceScope.SetId(&id)
originId := "https://microsoft.sharepoint.com/portals/Community"
accessPackageResourceScope.SetOriginId(&originId)
originSystem := "SharePointOnline"
accessPackageResourceScope.SetOriginSystem(&originSystem)
options := &msgraphsdk.AccessPackageResourceRoleScopesRequestBuilderPostOptions{
	Body: requestBody,
}
accessPackageId := "accessPackage-id"
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById(&accessPackageId).AccessPackageResourceRoleScopes().Post(options)


```