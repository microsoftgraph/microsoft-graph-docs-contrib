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



requestFilter := "participants_v2/any(p:p/id eq '821809f5-0000-0000-0000-3b5136c0e777')"

requestParameters := &graphcommunications.CommunicationsCallRecordsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphcommunications.CommunicationsCallRecordsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

callRecords, err := graphClient.Communications().CallRecords().Get(context.Background(), configuration)


```