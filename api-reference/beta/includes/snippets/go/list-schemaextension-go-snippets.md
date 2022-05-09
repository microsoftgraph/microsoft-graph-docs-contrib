---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.UsersRequestBuilderGetQueryParameters{
	Select: "ext55gb1l09_msLearnCourses",
}
options := &msgraphsdk.UsersRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Users().Get(options)


```