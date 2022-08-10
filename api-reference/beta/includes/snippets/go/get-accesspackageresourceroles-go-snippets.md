---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AccessPackageResourceRolesRequestBuilderGetQueryParameters{
	Filter: "(originSystem eq 'AadGroup' and accessPackageResource/id eq 'a35bef72-a8aa-4ca3-af30-f6b2ece7208f')",
	Expand: [] string {"accessPackageResource"},
}
configuration := &graphconfig.AccessPackageResourceRolesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogsById("accessPackageCatalog-id").AccessPackageResourceRoles().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```