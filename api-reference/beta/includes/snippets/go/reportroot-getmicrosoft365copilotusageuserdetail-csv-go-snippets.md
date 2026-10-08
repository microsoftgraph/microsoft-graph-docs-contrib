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


requestFormat := "text/csv"

requestParameters := &graphreports.ReportsGetMicrosoft365CopilotUsageUserDetailWithPeriodWithVersionRequestBuilderGetQueryParameters{
	Format: &requestFormat,
}
configuration := &graphreports.ReportsGetMicrosoft365CopilotUsageUserDetailWithPeriodWithVersionRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
period := "{period}"
graphClient.Reports().GetMicrosoft365CopilotUsageUserDetailWithPeriodWithVersion(&period, &version).Get(context.Background(), configuration)


```