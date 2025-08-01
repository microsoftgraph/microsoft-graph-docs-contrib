---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)


requestFilter := "allowedActions/makeCalls eq true"

requestParameters := &graphusers.CommunicationsCallSettingsDelegatorsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.CommunicationsCallSettingsDelegatorsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
delegators, err := graphClient.Me().Communications().CallSettings().Delegators().Get(context.Background(), configuration)


```