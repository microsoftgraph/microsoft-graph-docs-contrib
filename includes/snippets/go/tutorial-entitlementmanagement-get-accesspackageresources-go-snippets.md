---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "(displayName eq 'Marketing resources')"

requestParameters := &graphconfig.AccessPackageResourcesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.AccessPackageResourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogsById("accessPackageCatalog-id").AccessPackageResources().Get(context.Background(), configuration)


```