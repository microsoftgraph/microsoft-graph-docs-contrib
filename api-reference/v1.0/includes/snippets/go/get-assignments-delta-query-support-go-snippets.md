---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(2)

requestParameters := &graphconfig.EducationClasseItemAssignmentsMicrosoft.graph.delta()RequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.EducationClasseItemAssignmentsMicrosoft.graph.delta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().ClassesById("educationClass-id").Assignments().MicrosoftGraphDelta().Get(context.Background(), configuration)


```