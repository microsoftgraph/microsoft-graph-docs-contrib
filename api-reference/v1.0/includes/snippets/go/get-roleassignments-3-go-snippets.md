---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.RoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: "appScopeId%20eq%20'/AccessPackageCatalog/4cee616b-fdf9-4890-9d10-955e0ccb12bc'",
	Expand: "principal",
}
options := &msgraphsdk.RoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.RoleManagement().EntitlementManagement().RoleAssignments().GetWithRequestConfigurationAndResponseHandler(options, nil)


```