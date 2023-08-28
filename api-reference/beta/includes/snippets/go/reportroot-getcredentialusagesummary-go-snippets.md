---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphreports "github.com/microsoftgraph/msgraph-beta-sdk-go/reports"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "feature eq 'registration'"

requestParameters := &graphreports.ReportsGetCredentialUsageSummary(period='{period}')RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphreports.ReportsGetCredentialUsageSummary(period='{period}')RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

period := "{period}"
getCredentialUsageSummary, err := graphClient.Reports().GetCredentialUsageSummaryWithPeriod(&period).Get(context.Background(), configuration)


```