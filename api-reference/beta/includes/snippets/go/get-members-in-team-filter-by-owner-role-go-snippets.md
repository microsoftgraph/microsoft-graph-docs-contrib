---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "roles/any"

requestParameters := &graphconfig.MembersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.MembersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.TeamsById("team-id").Members().Get(context.Background(), configuration)


```