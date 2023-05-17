---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/communications"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "VideoTeleconferenceId eq '123456789'"

requestParameters := &graphconfig.CommunicationsOnlineMeetingsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.CommunicationsOnlineMeetingsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Communications().OnlineMeetings().Get(context.Background(), configuration)


```