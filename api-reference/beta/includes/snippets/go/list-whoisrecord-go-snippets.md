---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)


requestSearch := "\"admin/address/state:WA"

requestParameters := &graphsecurity.ThreatIntelligenceWhoisRecordsRequestBuilderGetQueryParameters{
	Search: &requestSearch,
	Orderby: [] string {"registrationDateTime desc""},
}
configuration := &graphsecurity.ThreatIntelligenceWhoisRecordsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
whoisRecords, err := graphClient.Security().ThreatIntelligence().WhoisRecords().Get(context.Background(), configuration)


```