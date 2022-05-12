---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.RoleAssignmentsRequestBuilderGetQueryParameters{
	Filter%20: "%20principalId%20eq%20'f1847572-48aa-47aa-96a3-2ec61904f41f'",
}
options := &msgraphsdk.RoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.RoleManagement().Directory().RoleAssignments().GetWithRequestConfigurationAndResponseHandler(options, nil)


```