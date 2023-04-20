---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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

result, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().Tasks().ByTaskId("businessScenarioTask-id").Patch(context.Background(), requestBody, nil)


```