---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter  := " principalId eq '5bde3e51-d13b-4db1-9948-fe4b109d11a7'"

requestParameters := &graphconfig.RoleAssignmentsRequestBuilderGetQueryParameters{
	Filter : &requestFilter ,
}
configuration := &graphconfig.RoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Directory().RoleAssignments().Get(context.Background(), configuration)


```