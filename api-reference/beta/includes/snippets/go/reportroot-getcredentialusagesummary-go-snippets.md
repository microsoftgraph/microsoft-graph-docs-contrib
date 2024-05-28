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


requestFilter := "feature eq 'registration'"

requestParameters := &graphreports.ReportsGetCredentialUsageSummaryWithPeriodRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphreports.ReportsGetCredentialUsageSummaryWithPeriodRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
period := "{period}"
getCredentialUsageSummary, err := graphClient.Reports().GetCredentialUsageSummaryWithPeriod(&period).GetAsGetCredentialUsageSummaryWithPeriodGetResponse(context.Background(), configuration)


```