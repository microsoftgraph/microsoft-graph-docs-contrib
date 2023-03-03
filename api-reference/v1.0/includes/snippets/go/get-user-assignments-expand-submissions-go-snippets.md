---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.EducationUserItemAssignmentsRequestBuilderGetQueryParameters{
	Expand: [] string {"submissions"},
}
configuration := &graphconfig.EducationUserItemAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().UsersById("educationUser-id").Assignments().Get(context.Background(), configuration)


```