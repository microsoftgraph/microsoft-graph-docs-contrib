---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.GroupsRequestBuilderGetQueryParameters{
	Select: "id,assignedLicenses",
	Filter: "assignedLicenses/any()",
}
options := &msgraphsdk.GroupsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Groups().Get(options)


```