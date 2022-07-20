---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AccessPackageResourceEnvironmentsRequestBuilderGetQueryParameters{
	Filter: "originSystem eq 'SharePointOnline'",
}
configuration := &graphconfig.AccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceEnvironments().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```