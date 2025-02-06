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


requestFilter := "createdDateTime gt 2024-06-10T11:23:44Z"

requestParameters := &graphreports.HealthMonitoringAlertsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id"," alertType"," createdDateTime"," state"},
}
configuration := &graphreports.HealthMonitoringAlertsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
alerts, err := graphClient.Reports().HealthMonitoring().Alerts().Get(context.Background(), configuration)


```