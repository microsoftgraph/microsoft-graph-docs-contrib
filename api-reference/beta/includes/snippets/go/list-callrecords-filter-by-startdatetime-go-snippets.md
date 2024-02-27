---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-beta-sdk-go/communications"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "startDateTime ge 2023-09-25T09:25:00Z and startDateTime lt 2023-09-25T09:30:00Z"

requestParameters := &graphcommunications.CommunicationsCallRecordsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphcommunications.CommunicationsCallRecordsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

callRecords, err := graphClient.Communications().CallRecords().Get(context.Background(), configuration)


```