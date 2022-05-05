---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.MembersRequestBuilderGetQueryParameters{
	Count: true,
	Filter: "startswith(displayName,%20'a')",
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.MembersRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).Members().Get(options)


```