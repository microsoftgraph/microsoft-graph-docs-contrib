---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(3)

requestParameters := &graphconfig.EducationClasseItemAssignmentCategorieItemRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.EducationClasseItemAssignmentCategorieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentCategoriesById("educationCategory-id").Get(context.Background(), configuration)


```