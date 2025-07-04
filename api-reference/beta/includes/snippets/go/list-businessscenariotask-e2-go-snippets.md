---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  //other-imports
)


requestFilter := "businessScenarioProperties/externalContextId eq 'Warehouse-CA-36'"

requestParameters := &graphsolutions.BusinessScenariosItemPlannerTasksRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsolutions.BusinessScenariosItemPlannerTasksRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tasks, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().Tasks().Get(context.Background(), configuration)


```