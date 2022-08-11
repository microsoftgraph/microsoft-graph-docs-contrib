---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AccessPackageResourceRolesRequestBuilderGetQueryParameters{
	Filter: "(originSystem eq 'SharePointOnline' and accessPackageResource/id eq '53c71803-a0a8-4777-aecc-075de8ee3991')",
	Select: [] string {"displayName","originId"},
}
configuration := &graphconfig.AccessPackageResourceRolesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogsById("accessPackageCatalog-id").AccessPackageResourceRoles().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```