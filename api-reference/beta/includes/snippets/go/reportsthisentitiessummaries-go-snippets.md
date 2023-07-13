---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/networkaccess"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "trafficType  eq 'microsoft365'"

requestParameters := &graphnetworkaccess.NetworkAccessReportsMicrosoft.graph.networkaccess.entitiesSummaries(startDateTime={startDateTime},endDateTime={endDateTime})RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphnetworkaccess.NetworkAccessReportsMicrosoft.graph.networkaccess.entitiesSummaries(startDateTime={startDateTime},endDateTime={endDateTime})RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.NetworkAccess().Reports().MicrosoftGraphNetworkaccessEntitiesSummaries(startDateTime={startDateTime},endDateTime={endDateTime})().Get(context.Background(), configuration)


```