---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.EducationClasseItemAssignmentsRequestBuilderGetQueryParameters{
	Expand: [] string {"resources"},
}
configuration := &graphconfig.EducationClasseItemAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().ClassesById("educationClass-id").Assignments().Get(context.Background(), configuration)


```