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



requestFilter := "MentionsPreview/IsMentioned eq true"

requestParameters := &graphconfig.ItemMessagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"Subject","Sender","ReceivedDateTime","MentionsPreview"},
}
configuration := &graphconfig.ItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Messages().Get(context.Background(), configuration)


```