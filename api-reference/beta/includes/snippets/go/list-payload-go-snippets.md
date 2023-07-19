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



requestFilter := "source eq 'Tenant'"

requestParameters := &graphsecurity.SecurityAttackSimulationPayloadsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsecurity.SecurityAttackSimulationPayloadsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().AttackSimulation().Payloads().Get(context.Background(), configuration)


```