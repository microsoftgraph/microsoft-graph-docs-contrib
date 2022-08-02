---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.RoleAssignmentsRequestBuilderGetQueryParameters{
	Filter : " principalIds/any",
}
configuration := &graphconfig.RoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().DeviceManagement().RoleAssignments().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```