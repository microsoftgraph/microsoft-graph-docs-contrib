---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestFilter := "microsoft.graph.user/userType eq 'Guest'"

requestParameters := &graphusers.ItemSponsorOfRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.ItemSponsorOfRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sponsorOf, err := graphClient.Users().ByUserId("user-id").SponsorOf().Get(context.Background(), configuration)


```