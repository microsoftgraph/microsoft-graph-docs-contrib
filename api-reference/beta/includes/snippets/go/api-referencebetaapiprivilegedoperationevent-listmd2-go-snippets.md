---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/privilegedoperationevents"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "requestType eq 'Deactivate'"

requestParameters := &graphconfig.PrivilegedOperationEventsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.PrivilegedOperationEventsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.PrivilegedOperationEvents().Get(context.Background(), configuration)


```