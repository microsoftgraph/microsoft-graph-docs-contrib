---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter  := " principalIds/any"

requestParameters := &graphconfig.RoleAssignmentsRequestBuilderGetQueryParameters{
	Filter : &requestFilter ,
}
configuration := &graphconfig.RoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().DeviceManagement().RoleAssignments().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```