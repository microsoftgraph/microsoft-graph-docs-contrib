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


requestFilter := "keyId eq '83f45296-fb8f-4aaa-a399-ac51084e02b7'"

requestParameters := &graphreports.ReportsAppCredentialSignInActivitiesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphreports.ReportsAppCredentialSignInActivitiesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appCredentialSignInActivities, err := graphClient.Reports().AppCredentialSignInActivities().Get(context.Background(), configuration)


```