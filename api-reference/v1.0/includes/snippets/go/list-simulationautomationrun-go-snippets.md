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



result, err := graphClient.Security().AttackSimulation().SimulationAutomations().BySimulationAutomationId("simulationAutomation-id").Runs().Get(context.Background(), nil)


```