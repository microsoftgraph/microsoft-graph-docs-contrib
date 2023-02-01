---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "(microsoft.graph.aadUserConversationMember/userId eq '73761f06-2ac9-469c-9f10-279a8cc267f9')"

requestParameters := &graphconfig.TeamItemMembersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.TeamItemMembersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").Members().Get(context.Background(), configuration)


```