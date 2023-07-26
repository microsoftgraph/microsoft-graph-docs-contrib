---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteamwork "github.com/microsoftgraph/msgraph-beta-sdk-go/teamwork"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "definitions/any(a:a/languageTag eq 'en-US')"

requestParameters := &graphteamwork.TeamworkTeamTemplatesRequestBuilderGetQueryParameters{
	Expand: [] string {"definitions"},
	Filter: &requestFilter,
}
configuration := &graphteamwork.TeamworkTeamTemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Teamwork().TeamTemplates().Get(context.Background(), configuration)


```