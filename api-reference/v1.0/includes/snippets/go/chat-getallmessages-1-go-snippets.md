---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(2)

requestParameters := &graphconfig.UserItemChatsGetAllMessages()RequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.UserItemChatsGetAllMessages()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().ByUserId("user-id").Chats().GetAllMessages().Get(context.Background(), configuration)


```