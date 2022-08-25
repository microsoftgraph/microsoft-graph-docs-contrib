---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "originSystem eq 'SharePointOnline'"

requestParameters := &graphconfig.AccessPackageResourceEnvironmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.AccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceEnvironments().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```