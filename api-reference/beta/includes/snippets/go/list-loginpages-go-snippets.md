---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "source eq 'tenant'"

requestParameters := &graphsecurity.SecurityAttackSimulationLoginPagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsecurity.SecurityAttackSimulationLoginPagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

loginPages, err := graphClient.Security().AttackSimulation().LoginPages().Get(context.Background(), configuration)


```