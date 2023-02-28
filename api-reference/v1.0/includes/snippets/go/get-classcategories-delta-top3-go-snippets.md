---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(3)

requestParameters := &graphconfig.EducationClasseItemAssignmentCategoriesMicrosoft.graph.delta()RequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.EducationClasseItemAssignmentCategoriesMicrosoft.graph.delta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentCategories().MicrosoftGraphDelta().Get(context.Background(), configuration)


```