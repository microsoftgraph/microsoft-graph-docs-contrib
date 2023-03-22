---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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

result, err := graphClient.Solutions().BusinessScenariosById("businessScenario-id").Planner().TasksById("businessScenarioTask-id").Patch(context.Background(), requestBody, nil)


```