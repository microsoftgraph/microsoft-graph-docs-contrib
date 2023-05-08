---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/reports"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "feature eq 'registration'"

requestParameters := &graphconfig.ReportsGetCredentialUsageSummary(period='{period}')RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.ReportsGetCredentialUsageSummary(period='{period}')RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Reports().GetCredentialUsageSummary(period='{period}')().Get(context.Background(), configuration)


```