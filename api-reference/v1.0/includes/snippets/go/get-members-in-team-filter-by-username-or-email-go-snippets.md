---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.MembersRequestBuilderGetQueryParameters{
	Filter: "(microsoft.graph.aadUserConversationMember/displayName%20eq%20'Harry%20Johnson'%20or%20microsoft.graph.aadUserConversationMember/email%20eq%20'admin@M365x987948.OnMicrosoft.com')",
}
options := &msgraphsdk.MembersRequestBuilderGetOptions{
	Q: requestParameters,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Members().Get(options)


```