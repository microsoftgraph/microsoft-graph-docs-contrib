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



requestFilter := "(microsoft.graph.aadUserConversationMember/displayName eq 'Harry Johnson' or microsoft.graph.aadUserConversationMember/email eq 'admin@M365x987948.OnMicrosoft.com')"

requestParameters := &graphteams.TeamItemMembersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphteams.TeamItemMembersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

members, err := graphClient.Teams().ByTeamId("team-id").Members().Get(context.Background(), configuration)


```