---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "graphlearn_courses/courseId eq ‘123’"

requestParameters := &graphconfig.GroupsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"displayName","id","description","graphlearn_courses"},
}
configuration := &graphconfig.GroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().Get(context.Background(), configuration)


```