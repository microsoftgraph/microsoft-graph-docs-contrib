---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")

configuration := &graphsolutions.BusinessScenariosItemPlannerTasksItemRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tasks, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().Tasks().ByBusinessScenarioTaskId("businessScenarioTask-id").Patch(context.Background(), requestBody, configuration)


```