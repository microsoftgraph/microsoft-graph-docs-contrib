---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)


requestSearch := "\"admin/address/state:WA"

requestParameters := &graphsecurity.SecurityThreatIntelligenceWhoisRecordsRequestBuilderGetQueryParameters{
	Search: &requestSearch,
	Orderby: [] string {"registrationDateTime desc""},
}
configuration := &graphsecurity.SecurityThreatIntelligenceWhoisRecordsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
whoisRecords, err := graphClient.Security().ThreatIntelligence().WhoisRecords().Get(context.Background(), configuration)


```