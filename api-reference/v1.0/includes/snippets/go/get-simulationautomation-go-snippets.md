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



simulationAutomations, err := graphClient.Security().AttackSimulation().SimulationAutomations().BySimulationAutomationId("simulationAutomation-id").Get(context.Background(), nil)


```