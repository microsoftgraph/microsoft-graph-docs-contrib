---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBusinessScenarioTask()
title := "Customer order #12010"
requestBody.SetTitle(&title) 
percentComplete := int32(20)
requestBody.SetPercentComplete(&percentComplete) 
priority := int32(1)
requestBody.SetPriority(&priority) 
businessScenarioProperties := graphmodels.NewBusinessScenarioProperties()
externalObjectVersion := "000003"
businessScenarioProperties.SetExternalObjectVersion(&externalObjectVersion) 
requestBody.SetBusinessScenarioProperties(businessScenarioProperties)

tasks, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().Tasks().ByBusinessScenarioTaskId("businessScenarioTask-id").Patch(context.Background(), requestBody, nil)


```