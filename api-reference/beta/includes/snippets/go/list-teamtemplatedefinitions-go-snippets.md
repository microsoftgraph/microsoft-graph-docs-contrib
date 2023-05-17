---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/teamwork"
	  //other-imports
)

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