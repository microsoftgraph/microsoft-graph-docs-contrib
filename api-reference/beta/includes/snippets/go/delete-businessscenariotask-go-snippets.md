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
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")

configuration := &graphsolutions.BusinessScenariosItemPlannerTasksItemRequestBuilderDeleteRequestConfiguration{
	Headers: headers,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().Tasks().ByBusinessScenarioTaskId("businessScenarioTask-id").Delete(context.Background(), configuration)


```