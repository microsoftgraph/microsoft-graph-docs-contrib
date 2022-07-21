---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.PrivilegedRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: "isElevated eq true and expirationDateTime eq null",
}
configuration := &graphconfig.PrivilegedRoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.PrivilegedRoleAssignments().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```