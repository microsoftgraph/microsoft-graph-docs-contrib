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



requestFilter := "source eq 'tenant'"

requestParameters := &graphsecurity.SecurityAttackSimulationLandingPagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsecurity.SecurityAttackSimulationLandingPagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

landingPages, err := graphClient.Security().AttackSimulation().LandingPages().Get(context.Background(), configuration)


```