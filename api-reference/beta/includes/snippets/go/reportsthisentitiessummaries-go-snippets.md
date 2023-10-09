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



requestFilter := "trafficType eq 'microsoft365'"

requestParameters := &graphnetworkaccess.NetworkAccessReportsMicrosoft.graph.networkaccess.entitiesSummaries(startDateTime={startDateTime},endDateTime={endDateTime})RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphnetworkaccess.NetworkAccessReportsMicrosoft.graph.networkaccess.entitiesSummaries(startDateTime={startDateTime},endDateTime={endDateTime})RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

startDateTime , err := time.Parse(time.RFC3339, "{startDateTime}")
endDateTime , err := time.Parse(time.RFC3339, "{endDateTime}")
microsoftGraphNetworkaccessEntitiesSummaries, err := graphClient.NetworkAccess().Reports().MicrosoftGraphNetworkaccessEntitiesSummariesWithStartDateTimeWithEndDateTime(&startDateTime, &endDateTime).Get(context.Background(), configuration)


```