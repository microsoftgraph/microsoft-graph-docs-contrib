---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.MembersRequestBuilderGetQueryParameters{
	Filter: "roles/any(r:r%20eq%20'owner')",
}
options := &msgraphsdk.MembersRequestBuilderGetOptions{
	Q: requestParameters,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Members().Get(options)


```