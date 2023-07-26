---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "displayName eq 'A Contoso Team'"

requestParameters := &graphteams.TeamsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","description"},
}
configuration := &graphteams.TeamsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Teams().Get(context.Background(), configuration)


```