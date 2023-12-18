---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-sdk-go/communications"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphcommunications.CommunicationsCallRecordItemRequestBuilderGetQueryParameters{
	Expand: [] string {"sessions($expand=segments)"},
}
configuration := &graphcommunications.CommunicationsCallRecordItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

callRecords, err := graphClient.Communications().CallRecords().ByCallRecordId("callRecord-id").Get(context.Background(), configuration)


```