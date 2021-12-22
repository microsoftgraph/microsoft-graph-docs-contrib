---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.AccessPackageResourcesRequestBuilderGetQueryParameters{
	Filter: "resourceType%20eq%20'Application'",
	Expand: "accessPackageResourceScopes",
}
options := &msgraphsdk.AccessPackageResourcesRequestBuilderGetOptions{
	Q: requestParameters,
}
accessPackageCatalogId := "accessPackageCatalog-id"
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogsById(&accessPackageCatalogId).AccessPackageResources().Get(options)


```