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



requestFilter := "startsWith(subject,'All')"

requestParameters := &graphconfig.ItemCalendarEventsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.ItemCalendarEventsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Calendar().Events().Get(context.Background(), configuration)


```