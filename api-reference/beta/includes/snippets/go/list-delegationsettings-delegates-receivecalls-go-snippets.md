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


requestFilter := "allowedActions/receiveCalls eq true"

requestParameters := &graphusers.CommunicationsCallSettingsDelegatesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.CommunicationsCallSettingsDelegatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
delegates, err := graphClient.Me().Communications().CallSettings().Delegates().Get(context.Background(), configuration)


```