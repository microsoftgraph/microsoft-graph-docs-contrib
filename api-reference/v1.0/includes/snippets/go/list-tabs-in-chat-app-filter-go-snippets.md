---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/chats"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "teamsApp/id eq 'com.microsoft.teamspace.tab.web'"

requestParameters := &graphconfig.ChatItemTabsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsApp"},
	Filter: &requestFilter,
}
configuration := &graphconfig.ChatItemTabsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Chats().ByChatId("chat-id").Tabs().Get(context.Background(), configuration)


```