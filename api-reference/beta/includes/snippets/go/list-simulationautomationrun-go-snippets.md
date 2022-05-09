---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

simulationAutomationId := "simulationAutomation-id"
result, err := graphClient.Security().AttackSimulation().SimulationAutomationsById(&simulationAutomationId).Runs().Get(nil)


```