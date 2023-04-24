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


requestParameters := &graphconfig.ItemEventItemRequestBuilderGetQueryParameters{
	Select: [] string {"subject","start","end","occurrenceId","exceptionOccurrences","cancelledOccurrences"},
	Expand: [] string {"exceptionOccurrences"},
}
configuration := &graphconfig.ItemEventItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Events().ByEventId("event-id").Get(context.Background(), configuration)


```