---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "definitions/any"

requestParameters := &graphconfig.TeamworkTeamTemplatesRequestBuilderGetQueryParameters{
	Expand: [] string {"definitions"},
	Filter: &requestFilter,
}
configuration := &graphconfig.TeamworkTeamTemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Teamwork().TeamTemplates().Get(context.Background(), configuration)


```