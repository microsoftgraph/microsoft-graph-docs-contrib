---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "subject eq 'let''s meet for lunch?'"

requestParameters := &graphusers.ItemMessagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.ItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

messages, err := graphClient.Me().Messages().Get(context.Background(), configuration)


```