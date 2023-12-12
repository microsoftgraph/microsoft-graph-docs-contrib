---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphapplications "github.com/microsoftgraph/msgraph-beta-sdk-go/applications"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestSearch := "\"displayName:Web\""
requestCount := true

requestParameters := &graphapplications.ApplicationsRequestBuilderGetQueryParameters{
	Search: &requestSearch,
	Count: &requestCount,
	Select: [] string {"appId","identifierUris","displayName","publisherDomain","signInAudience"},
}
configuration := &graphapplications.ApplicationsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

applications, err := graphClient.Applications().Get(context.Background(), configuration)


```