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



requestFilter := "members/any"

requestParameters := &graphconfig.UserItemChatsRequestBuilderGetQueryParameters{
	Expand: [] string {"members"},
	Filter: &requestFilter,
}
configuration := &graphconfig.UserItemChatsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().ByUserId("user-id").Chats().Get(context.Background(), configuration)


```