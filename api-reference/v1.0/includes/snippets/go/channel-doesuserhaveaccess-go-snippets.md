---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



doesUserHaveAccess, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").DoesUserHaveAccessWithUserIdWithTenantIdWithUserPrincipalName(&userId, &tenantId, &userPrincipalName).GetAsDoesUserHaveAccessGetResponse(context.Background(), nil)


```