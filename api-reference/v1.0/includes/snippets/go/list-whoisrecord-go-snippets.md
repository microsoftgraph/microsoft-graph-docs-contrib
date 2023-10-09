---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestSearch := "\"admin/address/state:WA"

requestParameters := &graphsecurity.SecurityThreatIntelligenceWhoisRecordsRequestBuilderGetQueryParameters{
	Search: &requestSearch,
	Orderby: [] string {"registrationDateTime desc""},
}
configuration := &graphsecurity.SecurityThreatIntelligenceWhoisRecordsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

whoisRecords, err := graphClient.Security().ThreatIntelligence().WhoisRecords().Get(context.Background(), configuration)


```