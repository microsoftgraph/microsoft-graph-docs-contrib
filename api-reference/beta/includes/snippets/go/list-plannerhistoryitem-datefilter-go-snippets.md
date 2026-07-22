---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphplanner "github.com/microsoftgraph/msgraph-beta-sdk-go/planner"
	  //other-imports
)


requestFilter := "occurredDateTime gt 2025-11-01T00:00:00Z and occurredDateTime lt 2025-12-01T00:00:00Z"

requestParameters := &graphplanner.PlansItemHistoryItemsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphplanner.PlansItemHistoryItemsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
historyItems, err := graphClient.Planner().Plans().ByPlannerPlanId("plannerPlan-id").HistoryItems().Get(context.Background(), configuration)


```