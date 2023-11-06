---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "source eq 'global'"

requestParameters := &graphsecurity.SecurityAttackSimulationEndUserNotificationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsecurity.SecurityAttackSimulationEndUserNotificationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

endUserNotifications, err := graphClient.Security().AttackSimulation().EndUserNotifications().Get(context.Background(), configuration)


```