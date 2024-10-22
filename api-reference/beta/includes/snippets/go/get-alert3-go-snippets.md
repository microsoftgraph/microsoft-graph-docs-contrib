---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphreports "github.com/microsoftgraph/msgraph-beta-sdk-go/reports"
	  //other-imports
)

requestParameters := &graphreports.ReportsHealthMonitoringAlertItemRequestBuilderGetQueryParameters{
	Expand: [] string {"enrichment/impacts/microsoft.graph.healthmonitoring.directoryobjectimpactsummary/resourceSampling"},
	Select: [] string {"alertType"," createdDateTime"," enrichment'"},
}
configuration := &graphreports.ReportsHealthMonitoringAlertItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
alerts, err := graphClient.Reports().HealthMonitoring().Alerts().ByAlertId("alert-id").Get(context.Background(), configuration)


```