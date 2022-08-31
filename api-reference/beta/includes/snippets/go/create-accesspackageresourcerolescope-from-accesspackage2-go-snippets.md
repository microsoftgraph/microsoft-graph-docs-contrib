---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackageResourceRoleScope()
accessPackageResourceRole := graphmodels.NewaccessPackageResourceRole()
originId := "4"
accessPackageResourceRole.SetOriginId(&originId) 
originSystem := "SharePointOnline"
accessPackageResourceRole.SetOriginSystem(&originSystem) 
accessPackageResource := graphmodels.NewaccessPackageResource()
id := "53c71803-a0a8-4777-aecc-075de8ee3991"
accessPackageResource.SetId(&id) 
accessPackageResourceRole.SetAccessPackageResource(accessPackageResource)
requestBody.SetAccessPackageResourceRole(accessPackageResourceRole)
accessPackageResourceScope := graphmodels.NewaccessPackageResourceScope()
id := "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33"
accessPackageResourceScope.SetId(&id) 
originId := "https://microsoft.sharepoint.com/portals/Community"
accessPackageResourceScope.SetOriginId(&originId) 
originSystem := "SharePointOnline"
accessPackageResourceScope.SetOriginSystem(&originSystem) 
requestBody.SetAccessPackageResourceScope(accessPackageResourceScope)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById("accessPackage-id").AccessPackageResourceRoleScopes().Post(requestBody)


```