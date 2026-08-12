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


requestFormat := "application/json"

requestParameters := &graphreports.ReportsGetMicrosoft365CopilotUserCountTrendWithPeriodWithVersionRequestBuilderGetQueryParameters{
	Format: &requestFormat,
}
configuration := &graphreports.ReportsGetMicrosoft365CopilotUserCountTrendWithPeriodWithVersionRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
period := "{period}"
graphClient.Reports().GetMicrosoft365CopilotUserCountTrendWithPeriodWithVersion(&period, &version).Get(context.Background(), configuration)


```