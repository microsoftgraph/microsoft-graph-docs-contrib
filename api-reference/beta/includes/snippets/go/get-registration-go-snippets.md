---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.ItemOnlineMeetingItemRegistrationRequestBuilderGetQueryParameters{
	Expand: [] string {"microsoft.graph.meetingRegistration/customQuestions"},
}
configuration := &graphconfig.ItemOnlineMeetingItemRegistrationRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Registration().Get(context.Background(), configuration)


```