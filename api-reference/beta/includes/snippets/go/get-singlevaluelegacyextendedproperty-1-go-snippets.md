---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphusers.ItemMessageItemRequestBuilderGetQueryParameters{
	Expand: [] string {"singleValueExtendedProperties($filter=id eq 'String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color')"},
}
configuration := &graphusers.ItemMessageItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

messages, err := graphClient.Me().Messages().ByMessageId("message-id").Get(context.Background(), configuration)


```