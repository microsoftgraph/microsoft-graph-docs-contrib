---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AccessPackageResourcesRequestBuilderGetQueryParameters{
	Filter: "resourceType eq 'Application'",
	Expand: [] string {"accessPackageResourceScopes"},
}
configuration := &graphconfig.AccessPackageResourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogsById("accessPackageCatalog-id").AccessPackageResources().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```