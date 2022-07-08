---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.AccessPackageResourceEnvironmentsRequestBuilderGetQueryParameters{
	Filter: "originSystem%20eq%20'SharePointOnline'",
}
options := &msgraphsdk.AccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceEnvironments().GetWithRequestConfigurationAndResponseHandler(options, nil)


```