---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



runs, err := graphClient.Security().AttackSimulation().SimulationAutomations().BySimulationAutomationId("simulationAutomation-id").Runs().Get(context.Background(), nil)


```